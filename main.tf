resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = var.tags
  
}

resource "aws_subnet" "public_subnet" {
  cidr_block = var.public_subnet_cidrs["0"]
  vpc_id = aws_vpc.vpc.id
  availability_zone = "us-east-1a"
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "vpc_route_table" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route" "vpc_route" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.vpc_igw.id
  route_table_id = aws_route_table.vpc_route_table.id
}

resource "aws_route_table_association" "vpc_subnet_association" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.vpc_route_table.id
}