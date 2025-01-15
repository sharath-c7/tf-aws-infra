provider "aws" {
  region = "us-west-2"
}

module "ecs_service" {
  source                  = "../../modules/ecs-service"
  container_definitions_path = "${path.module}/ecs-task-definition.yaml"
  subnets                 = ["subnet-12345678"]
  security_groups         = ["sg-12345678"]
}
