#Autoscaling Group resource

resource "aws_autoscaling_group" "osmanya_autoscaling_group" {
  name                      = "osmanya-asg"
  min_size                  = 1
  max_size                  = 2
  desired_capacity          = 1
  health_check_grace_period = 300
  vpc_zone_identifier       = [aws_subnet.osmanya_subnet1.id, aws_subnet.osmanya_subnet2.id]

  launch_configuration = aws_launch_configuration.osmanya_launch_configuration.name

  lifecycle {
    create_before_destroy = true
  }

  target_group_arns = [aws_lb_target_group.osmanya_target_group.arn]
}
