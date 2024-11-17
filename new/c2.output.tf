output "vpc_cd" {
  value = module.vpc.vpc_cidr
}
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_tags" {
  value = module.vpc.vpc_tags
}