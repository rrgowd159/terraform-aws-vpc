module "vpc" {
  source  = "rrgowd159/vpc/aws"
  version = "1.0.0"
  block_cidr = "20.0.0.0/16"
  vpc_tags = {
    Nmae = "My_VPC"
  }
}