
output "private_subnet_ids" {
  value = {
    for key, subnet in aws_subnet.private_subnet: key => subnet.id
  }
}


output "private_sg_ids" {
  value = {
    for key, sg in aws_security_group.private_sg: key => sg.id
  }
}
