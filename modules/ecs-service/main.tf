resource "aws_ecs_service" "ecs_service" {
  name            = var.service_name
  cluster         = var.cluster_arn
  task_definition = templatefile(var.task_definition)
  launch_type     = "FARGATE"
  network_configuration {
    subnets         = var.subnets
    security_groups = var.security_groups
  }

}