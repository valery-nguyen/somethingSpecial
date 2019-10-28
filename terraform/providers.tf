# # We use this data provider to expose an access token for communicating with the GKE cluster.
# data "google_client_config" "client" {}

# # Use this datasource to access the Terraform account's email for Kubernetes permissions.
# data "google_client_openid_userinfo" "terraform_user" {}

# provider "kubernetes" {
#   version = "~> 1.7.0"

#   load_config_file       = false
#   host                   = data.template_file.gke_host_endpoint.rendered
#   token                  = data.template_file.access_token.rendered
#   cluster_ca_certificate = data.template_file.cluster_ca_certificate.rendered
# }

# provider "helm" {
#   # We don't install Tiller automatically, but instead use Kubergrunt as it sets up the TLS certificates much easier.
#   install_tiller = false

#   # Enable TLS so Helm can communicate with Tiller securely.
#   enable_tls = true

#   kubernetes {
#     host                   = data.template_file.gke_host_endpoint.rendered
#     token                  = data.template_file.access_token.rendered
#     cluster_ca_certificate = data.template_file.cluster_ca_certificate.rendered
#   }
# }



# resource "helm_release" "consul" {
#   name      = var.name
#   chart     = "${path.module}/consul-helm"
#   namespace = var.namespace

#   set {
#     name  = "server.replicas"
#     value = var.replicas
#   }

#   set {
#     name  = "server.bootstrapExpect"
#     value = var.replicas
#   }

#   set {
#     name  = "server.connect"
#     value = true
#   }

#   provisioner "local-exec" {
#     command = "helm test ${var.name}"
#   }
# }