#EC2 Launch Configuration

resource "aws_launch_configuration" "osmanya_launch_configuration" {
  name            = "osmanya-launch-configuration"
  image_id        = data.aws_ami.server_ami.id
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.osmanya-authentication.id
  security_groups = [aws_security_group.osmanya_security_group.id]
  user_data       = file("userdata.tpl")

  root_block_device {
    volume_size = 10
  }
}