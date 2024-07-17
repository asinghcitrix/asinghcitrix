
variable "cluster_name" {
  description = "The name of the EKS cluster."
  default     = "my-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  default     = "1.21"
}
