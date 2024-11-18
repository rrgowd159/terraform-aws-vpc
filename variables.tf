# VPC Variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "enable_dns_support" {
  description = "Enable or disable DNS support for the VPC"
  type        = bool
}

variable "enable_dns_hostnames" {
  description = "Enable or disable DNS hostnames in the VPC"
  type        = bool
}

variable "tags" {
  description = "Tags to apply to the VPC and its resources"
  type        = map(string)
}

# Subnet Variables
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
}

# Gateway Variables
variable "internet_gateway_enabled" {
  description = "Enable or disable the Internet Gateway for the VPC"
  type        = bool
}

variable "nat_gateway_enabled" {
  description = "Enable or disable the NAT Gateway for private subnets"
  type        = bool
}

# Additional Variables
variable "elastic_ip_allocation_id" {
  description = "Elastic IP allocation ID for the NAT Gateway (if enabled)"
  type        = string
}
