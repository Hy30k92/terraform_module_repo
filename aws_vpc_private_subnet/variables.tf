variable "vpc_id" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "subnets" {
  type = map(object({
      cidr_block = string
      avail_zone = string
      ingress_port = list(number)
  }))
}

variable "public_igw_id" {
  description = "id of igw"
  type = string
}

variable "public_subnet_id" {
  description = "id of public subnet"
  type = string
}