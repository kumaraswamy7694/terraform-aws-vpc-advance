#forcing usr to provide value
variable "cidr_block" {

}
#this is optional because we give default value
variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true

}

variable "project_name" {


}
variable "common_tags" {
  default = {}

}
variable "vpc_tags" {
  default = {}

}
variable "igw_tags" {
  default = {}

}

variable "public_subnet_cidr" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidr) == 2
    error_message = "please provide 2 public subnet cidr"
  }


}

variable "private_subnet_cidr" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "please provide 2 public subnet cidr"
  }


}

variable "database_subnet_cidr" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidr) == 2
    error_message = "please provide 2 public subnet cidr"
  }


}

variable "nat_gateway_tags" {

  default = {}
}

variable "public_route_table_tags" {
  default = {}

}

variable "private_route_table_tags" {
  default = {}

}
