resource "aws_nat_gateway" "nat-gw-a1" {
  allocation_id = aws_eip.lab-nat-eip.id
  subnet_id = aws_subnet.public-subnet-a1.id
  
  tags = {
    Name = "nat-gw-a1"
  }
}

resource "aws_nat_gateway" "nat-gw-c1" {
  allocation_id = aws_eip.lab-nat-eip2.id
  subnet_id = aws_subnet.public-subnet-c1.id
  
  tags = {
    Name = "nat-gw-c1"
  }
}