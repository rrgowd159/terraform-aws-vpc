output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}
output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "vpc_tags" {
  value = aws_vpc.vpc.tags_all
}

output "vpc_dns_hostnames" {
  value = aws_vpc.vpc.enable_dns_hostnames
}