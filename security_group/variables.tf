# 모듈에 사용할 변수 정의
variable "sg_name" {
  description = "name of SG"
  type = string
  default = "tfEleven"
}

# 모듈에 사용할 변수 정의
variable "description" {
  description = "description of SG"
  type = string
  default = "Allow HTTP and SSH traffic"
}

variable "ingress_port" {
  description = "ingrees_port number of SG"
  type = number
  default = 80
}