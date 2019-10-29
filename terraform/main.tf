# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY A GKE PUBLIC CLUSTER IN GOOGLE CLOUD PLATFORM
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  backend "gcs" {
    credentials = "./terraform-gke-keyfile.json"
    bucket      = "somethingspecial-terraform"
    prefix      = "terraform/state"
  }
  required_version = ">= 0.12.7"
}

# ---------------------------------------------------------------------------------------------------------------------
# PREPARE PROVIDERS
# ---------------------------------------------------------------------------------------------------------------------

# resource "google_compute_network" "private_network" {
#   provider = "google-beta"

#   name       = "private-network"
# }
# resource "google_compute_global_address" "private_ip_address" {
#   provider = "google-beta"

#   name          = "private-ip-address"
#   purpose       = "VPC_PEERING"
#   address_type = "INTERNAL"
#   prefix_length = 16
#   network       = "${google_compute_network.private_network.self_link}"
# }
# resource "google_service_networking_connection" "private_vpc_connection" {
#   provider = "google-beta"

#   network       = "${google_compute_network.private_network.self_link}"
#   service       = "servicenetworking.googleapis.com"
#   reserved_peering_ranges = ["${google_compute_global_address.private_ip_address.name}"]
# }

# resource "random_id" "db_name_suffix" {
#   byte_length = 4
# }
# resource "google_sql_database_instance" "instance" {
#   provider = "google-beta"

#   name = "private-instance-${random_id.db_name_suffix.hex}"
#   region = "us-west1"

#   depends_on = [
#     "google_service_networking_connection.private_vpc_connection"
#   ]

#   settings {
#     tier = "db-f1-micro"
#     ip_configuration {
#       ipv4_enabled = false
#       private_network = "default"
#     }
#   }
# }

# resource "google_sql_user" "users" {
#   name     = "somethingspecial"
#   instance = "${google_sql_database_instance.instance.name}"
#   host     = "somethingspecial"
#   password = "valery"
# }

provider "google" {
  version = "~> 2.9.0"
  credentials = "${file(var.credentials)}"
  project = var.project
  region  = var.region
}

provider "google-beta" {
  version = "~> 2.9.0"
  credentials = "${file(var.credentials)}"
  project = var.project
  region  = var.region
}

data "google_client_config" "current" {}

module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  version                    = "4.1.0"
  project_id                 = var.project
  name                       = var.cluster_name
  region                     = var.region
  zones                      = var.zones
  network                    = ${google_compute_network.private_network.self_link}
  subnetwork                 = "default"
  ip_range_pods              = ""
  ip_range_services          = ""
  http_load_balancing        = true
  horizontal_pod_autoscaling = false
  kubernetes_dashboard       = true
  network_policy             = false

  node_pools = [
    {
      name               = "default-node-pool"
      machine_type       = var.machine_type
      min_count          = var.min_count
      max_count          = var.max_count
      disk_size_gb       = var.disk_size_gb
      disk_type          = "pd-standard"
      image_type         = "COS"
      auto_repair        = true
      auto_upgrade       = true
      service_account    = var.service_account
      preemptible        = false
      initial_node_count = var.initial_node_count
    },
  ]

  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool",
    ]
  }
}

provider "kubernetes" {
  host = "${module.gke.endpoint}"
  cluster_ca_certificate  = "${base64decode(module.gke.ca_certificate)}"
  token                   = "${data.google_client_config.current.access_token}"
}

resource "kubernetes_service_account" "tiller" {
  depends_on = [
    "module.gke.endpoint"
  ]

  metadata {
    name = "tiller"
    namespace = "kube-system"
  }
}

resource "kubernetes_cluster_role_binding" "tiller" {
  metadata {
    name = "tiller-cluster-admin"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }

  subject {
    api_group = ""
    kind      = "ServiceAccount"
    name      = "tiller"
    namespace = "kube-system"
  }
}

provider "helm" {
  version         = "~> 0.9"
  install_tiller  = true
  tiller_image    = "gcr.io/kubernetes-helm/tiller:v2.14.3"
  service_account = "tiller"

  kubernetes {
    host                    = "${module.gke.endpoint}"
    cluster_ca_certificate  = "${base64decode(module.gke.ca_certificate)}"
    token                   = "${data.google_client_config.current.access_token}"

    config_path             = "${path.root}/.kube/config"
  }
}

data "helm_repository" "ss-helm" {
  name = "ss-helm"
  url  = "https://raw.githubusercontent.com/valery-nguyen/somethingSpecial/master/ss-helm/"
}

resource "helm_release" "ss-release" {
  name       = "ss-release"
  repository = "${data.helm_repository.ss-helm.metadata[0].name}"
  chart      = "ss-helm"

  values = [
    "${file("values.yaml")}"
  ]

  set {
    name  = "DATABASE_URL"
    value = "postgresql://${google_sql_database_instance.instance.private_ip_address}:5432/"
  }
}