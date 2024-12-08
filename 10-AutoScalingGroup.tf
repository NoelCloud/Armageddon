
resource "aws_autoscaling_group" "bar" {
  provider = aws
  desired_capacity   = 2
  max_size           = 3
  min_size           = 1
  vpc_zone_identifier = [
    aws_subnet.private-ap-northeast-1c.id,
    aws_subnet.private-ap-northeast-1d.id
  ]

  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.armageddon-app_tg.arn]

  launch_template {
    id      = aws_launch_template.armageddon-LT.id
    version = "$Latest"
  }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

    initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "Name"
    value               = "Armageddon-asg-instance"
    propagate_at_launch = true
  } 
}