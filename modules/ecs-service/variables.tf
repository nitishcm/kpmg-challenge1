variable "service_name" {

  type        = string
  description = "Name of the service"
}

variable "cluster_arn" {

  type        = string
  description = "ARN of ecs cluster"
}

variable "task_definition" {

  type        = string
  description = "task definition file path"
}

variable "subnets" {
  type        = list(string)
  description = "subnet id list"
}

variable "security_groups" {

  type        = list(string)
  description = "security group ids"
}