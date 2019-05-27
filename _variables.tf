# == REQUIRED VARS

variable "name" {
  description = "Name of this ECS cluster"
}

variable "instance_type_1" {
  description = "Instance type for ECS workers (first priority)"
}

variable "instance_type_2" {
  description = "Instance type for ECS workers (second priority)"
}

variable "instance_type_3" {
  description = "Instance type for ECS workers (third priority)"
}

variable "on_demand_percentage" {
  description = "Percentage of on-demand intances vs spot"
  default     = 100
}

variable "vpc_id" {
  description = "VPC ID to deploy the ECS cluster"
}

variable "private_subnet_ids" {
  type        = "list"
  description = "List of private subnet IDs for ECS instances"
}

variable "public_subnet_ids" {
  type        = "list"
  description = "List of public subnet IDs for ECS ALB"
}

variable "secure_subnet_ids" {
  type        = "list"
  description = "List of secure subnet IDs for EFS"
}

variable "certificate_arn" {}

# == OPTIONAL VARS

variable "alb" {
  default     = true
  description = "Whether to deploy an ALB or not with the cluster"
}

variable "asg_min" {
  default = 1
}

variable "asg_max" {
  default = 4
}

variable "asg_memory_target" {
  default = 60
}