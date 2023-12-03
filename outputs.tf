output "public_ip_addresses" {
  value = module.vpc.public_subnet_ids
}

output "private_ip_addresses" {
  value = module.vpc.private_subnet_ids
}

output "instance_ids" {
  value = aws_instance.ec2_instance[*].id
}
