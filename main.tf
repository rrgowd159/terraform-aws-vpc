resource "aws_vpc" "vpc" {
  cidr_block = var.block_cidr
  tags = var.vpc_tags
}