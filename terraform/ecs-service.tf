resource "aws_ecs_service" "service" {
  name            = "devops-fortune-service"  
  cluster         = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = ["subnet-0cc71f36f26b6b03a", "subnet-01da053285ed1019b"]  
    security_groups  = ["sg-089c907eb24429082"]  
    assign_public_ip = true
  }
}

