resource "aws_eip" "lab-nat-eip" {
  domain = "vpc"
  tags = {
    Name = "-"
  }
}

resource "aws_eip" "lab-nat-eip2" {
  domain = "vpc"
  tags = {
    Name = "-"
  }
}