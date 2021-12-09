resource "aws_vpc" "main" {
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "main-vpc"
  }
}

resource "aws_subnet" "main_1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/25"

  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "main-1a-subnet"
  }
}
