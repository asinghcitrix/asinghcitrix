resource "aws_ecs_task_definition" "task" {
  family                   = "devops-fortune-task"  
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name      = "devops-fortune-container"
      image     = "637423421797.dkr.ecr.us-east-2.amazonaws.com/devops-fortune-api"  
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}
