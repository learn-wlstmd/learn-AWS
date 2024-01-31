resource "aws_internet_gateway" "lab-vpc-igw" {
  vpc_id = aws_vpc.lab-vpc.id

  tags = {
    Name = "lab-vpc-igw"
  }
}