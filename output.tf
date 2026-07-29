output "codecommit_clone_url" {
  description = "HTTP clone URL for CodeCommit"
  value       = aws_codecommit_repository.app.clone_url_http
}

output "alb_dns_name" {
  description = "Access the deployed Nginx web page here"
  value       = "http://${aws_lb.main.dns_name}"
}