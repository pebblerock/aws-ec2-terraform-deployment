#Internet Gateway resource

resource "aws_internet_gateway" "osmanya_gateway" {
  vpc_id = aws_vpc.osmanya_vpc.id

  tags = {
    Name = "developer-igw"
  }
}
