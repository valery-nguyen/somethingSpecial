credentials        = "./terraform-gke-keyfile.json"
project            = "somethingspecial-256820"
region             = "us-west1"
zones              = ["us-west1-a"]
machine_type       = "g1-small"
min_count          = 1
max_count          = 1
disk_size_gb       = 10
initial_node_count = 1
service_account    = "terraform-gke@somethingspecial-256820.iam.gserviceaccount.com"

cluster_name       = "somethingspecial-cluster-1"



