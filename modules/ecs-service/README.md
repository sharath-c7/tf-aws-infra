# ECS Module

This module creates an AWS ECS cluster, task definition, and service.

## Inputs

- `cluster_name` - The name of the ECS cluster.
- `task_family` - The family of the ECS task definition.
- `execution_role_arn` - The ARN of the IAM role that allows Amazon ECS to pull container images and publish container logs.
- `cpu` - The number of CPU units to reserve for the task (default is `256`).
- `memory` - The amount of memory (in MiB) to reserve for the task (default is `512`).
- `container_name` - The name of the container.
- `container_image` - The Docker image to use for the container.
- `container_cpu` - The number of CPU units to reserve for the container (default is `256`).
- `container_memory` - The amount of memory (in MiB) to reserve for the container (default is `512`).
- `container_port` - The port on the container to expose.
- `host_port` - The port on the host to map to the container port.
- `service_name` - The name of the ECS service.
- `desired_count` - The desired number of service tasks (default is `1`).
- `subnets` - The subnets to associate with the service.
- `security_groups` - The security groups to associate with the service.

## Outputs

- `cluster_id` - The ID of the ECS cluster.
- `task_definition_arn` - The ARN of the ECS task definition.
- `service_id` - The ID of the ECS service.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_service.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_definitions_path"></a> [container\_definitions\_path](#input\_container\_definitions\_path) | Path to the ECS container definitions JSON file | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of security group IDs for ECS service | `list(string)` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | List of subnet IDs for ECS service | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The ID of the ECS cluster |
| <a name="output_service_id"></a> [service\_id](#output\_service\_id) | The ID of the ECS service |
| <a name="output_task_definition_arn"></a> [task\_definition\_arn](#output\_task\_definition\_arn) | The ARN of the ECS task definition |
<!-- END_TF_DOCS -->