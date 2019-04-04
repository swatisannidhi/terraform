resource "aws_vpc" "demo-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "demo-vpc"
  }
}

resource "aws_subnet" "demo-public-subnet" {
  vpc_id  = "${aws_vpc.demo-vpc.id}"
  cidr_block = "10.0.1.0/24"

  
  tags = {
    Name = "demo-public-subnet"
  }
}

resource "aws_subnet" "demo-private-subnet" {
  vpc_id  = "${aws_vpc.demo-vpc.id}"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "demo-public-subnet"
  }
}
