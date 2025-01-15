module "ecs" {
  source             = "../../modules/ecs"
  cluster_name       = "my-production-cluster"
  task_family        = "my-task-family"
  execution_role_arn = "arn:aws:iam::123456789012:role/ecsExecutionRole"
  cpu                = "256"
  memory             = "512"
  container_name     = "my-container"
  container_image    = "my-docker-image:latest"
  container_cpu      = 256
  container_memory   = 512
  container_port     = 80
  host_port          = 80
  service_name       = "my-production-service"
  desired_count      = 2
  subnets            = ["subnet-0123456789abcdef0"]
  security_groups    = ["sg-0123456789abcdef0"]
}
