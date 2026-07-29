
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region to deploy resources into"
}

variable "app_name" {
  type        = string
  default     = "demo-nginx"
  description = "Base name for resources"
}

variable "container_name" {
  type        = string
  default     = "nginx-container"
  description = "Must match CONTAINER_NAME in buildspec.yml"
}