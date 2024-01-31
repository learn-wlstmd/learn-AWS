resource "aws_subnet" "public-subnet-a1" {
  vpc_id = aws_vpc.lab-vpc.id
  cidr_block = "10.1.1.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-a1"
  }
}

resource "aws_subnet" "public-subnet-c1" {
  vpc_id = aws_vpc.lab-vpc.id
  cidr_block = "10.1.2.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-c1"
  }
}

resource "aws_subnet" "private-subnet-a1" {
  vpc_id = aws_vpc.lab-vpc.id
  cidr_block = "10.1.3.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "private-subnet-a1"
  }
}

resource "aws_subnet" "private-subnet-c1" {
  vpc_id = aws_vpc.lab-vpc.id
  cidr_block = "10.1.4.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "private-subnet-c1"
  }
}

resource "aws_subnet" "private-subnet-a2" {
  vpc_id = aws_vpc.lab-vpc.id
  cidr_block = "10.1.5.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "private-subnet-a2"
  }
}

resource "aws_subnet" "private-subnet-c2" {
  vpc_id = aws_vpc.lab-vpc.id
  cidr_block = "10.1.6.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "private-subnet-c2"
  }
}