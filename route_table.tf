#Route Table resource

resource "aws_route_table" "osmanya_public_rt" {
  vpc_id = aws_vpc.osmanya_vpc.id

  tags = {
    Name = "developer-public-rt"
  }
}

resource "aws_route" "osmanya_route" {
  route_table_id         = aws_route_table.osmanya_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.osmanya_gateway.id
}

#Route Table Association resource

resource "aws_route_table_association" "osmanya_route_table_association1" {
  subnet_id      = aws_subnet.osmanya_subnet1.id
  route_table_id = aws_route_table.osmanya_public_rt.id
}

resource "aws_route_table_association" "osmanya_route_table_association2" {
  subnet_id      = aws_subnet.osmanya_subnet2.id
  route_table_id = aws_route_table.osmanya_public_rt.id
}