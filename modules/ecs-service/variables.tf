variable "container_definitions_path" {
  description = "Path to the ECS container definitions JSON file"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for ECS service"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs for ECS service"
  type        = list(string)
}
