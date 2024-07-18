provider "aws" {
  region = "us-east-2"  # Replace with "us-east-2" if hardcoding
}

# Include IAM roles and policies
module "iam" {
  source = "./iam.tf"
}

# Include ECS Cluster
module "ecs_cluster" {
  source = "./ecs-cluster.tf"
}

# Include ECS Task Definition
module "ecs_task_definition" {
  source = "./ecs-task-definition.tf"
}

# Include ECS Service
module "ecs_service" {
  source = "./ecs-service.tf"
}

# Include Networking (VPC, Subnets, Security Groups)
module "networking" {
  source = "./networking.tf"
}
