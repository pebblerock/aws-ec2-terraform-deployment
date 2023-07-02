#Public Subnets resource

resource "aws_subnet" "osmanya_subnet1" {
  vpc_id                  = aws_vpc.osmanya_vpc.id
  cidr_block              = "10.100.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "developer-public-1"
  }
}

resource "aws_subnet" "osmanya_subnet2" {
  vpc_id                  = aws_vpc.osmanya_vpc.id
  cidr_block              = "10.100.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "developer-public-2"
  }
}