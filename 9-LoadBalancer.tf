resource "aws_lb" "armageddon-alb" {
    name = "armageddon-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.armageddon-LB-SG01.id]
    subnets = [
      aws_subnet.public-ap-northeast-1a.id, 
      aws_subnet.public-ap-northeast-1c.id
      ]
  
    enable_deletion_protection = false  
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "armageddon_app1_LoadBalancer"
  }
}  

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.armageddon-alb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.armageddon-app_tg.arn
  }
}