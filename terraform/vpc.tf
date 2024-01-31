resource "aws_vpc" "lab-vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "lab-vpc"
  }
}