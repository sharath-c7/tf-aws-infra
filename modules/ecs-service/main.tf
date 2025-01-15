resource "aws_ecs_cluster" "this" {
  name = "ecs-cluster"
}

resource "aws_ecs_task_definition" "this" {
  family                   = "ecs-task"
  container_definitions    = file("${var.container_definitions_path}")
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
}

resource "aws_ecs_service" "this" {
  name            = "ecs-service"
  cluster         = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.this.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  
  network_configuration {
    subnets          = var.subnets
    security_groups  = var.security_groups
    assign_public_ip = true
  }
}
