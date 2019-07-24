# ------------------------------------------------------------------------------
# REQUIRED VARIABLES
# ------------------------------------------------------------------------------

variable "project_id" {
  description = "Project where resources will be created"
}

variable "serviceaccount_key" {
  description = "Service account key for the project"
}

# ------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# ------------------------------------------------------------------------------

variable "cluster_name" {
  default = "k8s-cluster"
}

variable "network_name" {
  default = "network"
}

variable "main_compute_zone" {
  description = "Master zone (only one of region and main_compute_zone may be set)"
  default     = ""
}

variable "region" {
  description = "Cluster region (only one of region and main_compute_zone may be set)"
  default     = ""
}

variable "additional_zones" {
  default = []
}

variable "enable_kubernetes_alpha" {
  default = false
}

variable "enable_binary_authorization" {
  default = false
}

variable "oauth_scopes" {
  type = "list"

  default = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
  ]
}

variable "node_type" {
  default = "n1-standard-2"
}

variable "node_image_type" {
  default = "COS"
}

variable "binary_authorization_evaluation_mode" {
  default = "ALWAYS_ALLOW"
}

variable "binary_authorization_admission_whitelist_patterns" {
  # This list cannot be empty, so use a placeholder value that satisfies Google's API.
  default = ["PLACE.HOLDER/PATTERN"]
}

variable "initial_node_count" {
  default = 2
}

variable "kubernetes_version" {
  default = "1.12.7-gke.7"
}

variable "monitoring_service" {
  default = "monitoring.googleapis.com"
}

variable "logging_service" {
  default = "logging.googleapis.com"
}

variable "master_auth_username" {
  default     = ""
  description = "The username to use for HTTP basic authentication"
}

variable "master_auth_password" {
  default     = ""
  description = "The password to use for HTTP basic authentication"
}

variable "issue_client_certificate" {
  default     = true
  description = "Whether client certificate authorization is enabled"
}

variable "create_timeout" {
  default = "30m"
}

variable "update_timeout" {
  default = "10m"
}

variable "delete_timeout" {
  default = "10m"
}

variable "dashboard_disabled" {
  default     = false
  description = "Disable Kubernetes Dashboard"
}

variable "http_load_balancing_disabled" {
  default     = false
  description = "Disable GKE HTTP (L7) load balancing controller addon"
}
