terraform {
  backend "gcs" {
    credentials = "./terraform-gke-keyfile.json"
    bucket      = "somethingspecial-terraform"
    prefix      = "terraform/state"
  }
}