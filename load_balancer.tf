#Load Balancer

resource "aws_lb" "osmanya_lb" {
  name               = "osmanya-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.osmanya_subnet1.id, aws_subnet.osmanya_subnet2.id]

  security_groups = [aws_security_group.osmanya_security_group.id]

  tags = {
    Name = "osmanya-lb"
  }
}

resource "aws_lb_target_group" "osmanya_target_group" {
  name     = "osmanya-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.osmanya_vpc.id

  health_check {
    path = "/"
  }

  tags = {
    Name = "osmanya-target-group"
  }
}

resource "aws_lb_listener" "osmanya_listener" {
  load_balancer_arn = aws_lb.osmanya_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.osmanya_target_group.arn
  }
}
