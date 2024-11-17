variable "vpc_cidr" {
  description = "This is cidr block for vpc"
  type = string
}

variable "vpc_tags" {
  description = "This is tags for vpc"
  type = map(string)
}

variable "subnet_cidr" {
  description = "This is cidr block for vpc"
  type = string
}