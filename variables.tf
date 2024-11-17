variable "block_cidr" {
  description = "This is cidr block for vpc"
  type = string
  default = "10.0.0.0/16"
}
variable "vpc_tags" {
  description = "This is tags for vpc"
  type = map(string)
  default = {
    "Name" = "VPC"
    "Env" = "Test"
  }
}