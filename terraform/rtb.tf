resource "aws_route_table" "public-subnet-rt" {
  vpc_id = aws_vpc.lab-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab-vpc-igw.id
  }

  tags = {
    Name = "public-subnet-rt"
  }
}

resource "aws_route_table" "private-subnet-a1-rt" {
  vpc_id = aws_vpc.lab-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    // nat_gateway_id = aws_nat_gateway.lab-natgw-a.id
  }

  tags = {
    Name = "private-subnet-a1-rt"
  }
}

resource "aws_route_table" "private-subnet-c1-rt" {
  vpc_id = aws_vpc.lab-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    // nat_gateway_id = aws_nat_gateway.lab-natgw-a.id
  }

  tags = {
    Name = "private-subnet-c1-rt"
  }
}

resource "aws_route_table" "private-subnet-a2-rt" {
  vpc_id = aws_vpc.lab-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    // nat_gateway_id = aws_nat_gateway.lab-natgw-a.id
  }

  tags = {
    Name = "private-subnet-a2-rt"
  }
}

resource "aws_route_table" "private-subnet-c2-rt" {
  vpc_id = aws_vpc.lab-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    // nat_gateway_id = aws_nat_gateway.lab-natgw-a.id
  }

  tags = {
    Name = "private-subnet-c2-rt"
  }
}

resource "aws_route_table_association" "public-subnet-rt-association-a" {
  subnet_id      = aws_subnet.public-subnet-a1.id
  route_table_id = aws_route_table.public-subnet-rt.id
}

resource "aws_route_table_association" "public-subnet-rt-association-c" {
  subnet_id      = aws_subnet.public-subnet-c1.id
  route_table_id = aws_route_table.public-subnet-rt.id
}

resource "aws_route_table_association" "private-subnet-a1-rt-association" {
  subnet_id      = aws_subnet.private-subnet-a1.id
  route_table_id = aws_route_table.private-subnet-a1-rt.id
}

resource "aws_route_table_association" "private-subnet-c1-rt-association" {
  subnet_id      = aws_subnet.private-subnet-c1.id
  route_table_id = aws_route_table.private-subnet-c1-rt.id
}

resource "aws_route_table_association" "private-subnet-a2-rt-association" {
  subnet_id      = aws_subnet.private-subnet-a2.id
  route_table_id = aws_route_table.private-subnet-a2-rt.id
}

resource "aws_route_table_association" "private-subnet-c2-rt-association" {
  subnet_id      = aws_subnet.private-subnet-c2.id
  route_table_id = aws_route_table.private-subnet-c2-rt.id
}