variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-2"  
}

variable "ecr_repository_url" {
  description = "The URL of the ECR repository"
  default     = "637423421797.dkr.ecr.us-east-2.amazonaws.com/devops-fortune-api" 
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  default     = "devops-fortune-cluster"  
}

variable "service_name" {
  description = "The name of the ECS service"
  default     = "devops-fortune-service"  
}

variable "task_family" {
  description = "The family name of the ECS task definition"
  default     = "devops-fortune-task"  
}
