variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-2"  # Replace if needed
}

variable "ecr_repository_url" {
  description = "The URL of the ECR repository"
  default     = "637423421797.dkr.ecr.us-east-2.amazonaws.com/devops-fortune-api"  # Replace if needed
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  default     = "devops-fortune-cluster"  # Replace if needed
}

variable "service_name" {
  description = "The name of the ECS service"
  default     = "devops-fortune-service"  # Replace if needed
}

variable "task_family" {
  description = "The family name of the ECS task definition"
  default     = "devops-fortune-task"  # Replace if needed
}
