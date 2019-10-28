# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the operator.
# ---------------------------------------------------------------------------------------------------------------------

variable "credentials" {
  description = "Location of the credentials keyfile."
  type        = string
}

variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
}

variable "region" {
  description = "The region for the network. If the cluster is regional, this must be the same region. Otherwise, it should be the region of the zone."
  type        = string
}

variable "zones" {
  description = "The zones for the network."
  type        = list(string)
}

variable "machine_type" {
  description = "The machine configuration type."
  type        = string
}

variable "min_count" {
  description = "The minimum number of nodes."
  type        = number
}

variable "max_count" {
  description = "The maximum number of nodes."
  type        = number
}

variable "disk_size_gb" {
  description = "Size of the node's disk."
  type        = number
}

variable "initial_node_count" {
  type        = number
  description = "The number of nodes to create in this cluster's default node pool."
}

variable "service_account" {
  description = "The service account to run nodes as if not overridden in `node_pools`. The create_service_account variable default value (true) will cause a cluster-specific service account to be created."
  type        = string
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  type        = string
}