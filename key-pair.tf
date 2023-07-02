#Key Pair for SSH 

resource "aws_key_pair" "osmanya-authentication" {
  key_name   = "osmanya-key"
  public_key = file("~/.ssh/osmanya-key.pub")
}