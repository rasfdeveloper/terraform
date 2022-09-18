provider "aws" {}

resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "vpc-test"
    CreatedBy = "terraform"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "192.168.10.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name = "vpc-test-subnet-1"
    CreatedBy = "terraform"
  }
}
