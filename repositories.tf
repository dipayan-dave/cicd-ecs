# CodeCommit Repository
resource "aws_codecommit_repository" "app" {
  repository_name = "${var.app_name}-app"
  description     = "Code repository for ${var.app_name} application"
}

# Amazon ECR Repository
resource "aws_ecr_repository" "repo" {
  name                 = "${var.app_name}-repo"
  image_tag_mutability = "MUTABLE" 

  image_scanning_configuration {
    scan_on_push = true
  }
}

# S3 Bucket for CodePipeline Artifacts
resource "aws_s3_bucket" "pipeline_artifacts" {
  bucket        = "${var.app_name}-pipeline-artifacts-${data.aws_caller_identity.current.account_id}"
  force_destroy = true
}

data "aws_caller_identity" "current" {}