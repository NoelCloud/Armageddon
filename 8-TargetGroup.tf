resource "aws_lb_target_group" "armageddon-app_tg" {
  name     = "armageddon-app-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.armageddon-app.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "armageddon-app-TargetGroup"
    Service = "armageddon-app"
    Owner   = "User"
    Project = "Web Service"
  }
}