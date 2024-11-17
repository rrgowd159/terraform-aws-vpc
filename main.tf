resource "aws_vpc" "vpc" {
  cidr_block = var.block_cidr
  tags = var.vpc_tags
}


resource "aws_vpc" "vpc_alias" {
  cidr_block = var.block_cidr_alias
  tags = var.vpc_tags
  provider = aws.aws-us-east-1
}