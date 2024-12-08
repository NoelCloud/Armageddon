output "vpc_id" {
  description = "ID of project VPC"
  value       = aws_vpc.armageddon-app.id
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value = aws_lb.armageddon-alb.dns_name
}
