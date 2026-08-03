variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for the backend resources."
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name for Terraform remote state."
}

variable "dynamodb_table_name" {
  type        = string
  description = "DynamoDB table name for Terraform state locking."
}

variable "tags" {
  type = map(string)
  default = {
    CreatedBy = "terraform-bootstrap"
  }
  description = "Tags to attach to backend resources."
}
