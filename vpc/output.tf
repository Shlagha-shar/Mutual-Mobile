output "name" {
  value = var.vpc_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "arn" {
  value = module.vpc.vpc_arn
}

output "cidr" {
  value = module.vpc.vpc_cidr_block
}

output "private_subnets_ids" {
  value = module.vpc.private_subnets
}

output "private_subnets_arns" {
  value = module.vpc.private_subnet_arns
}

output "public_subnets_ids" {
  value = module.vpc.public_subnets
}

output "public_subnets_arns" {
  value = module.vpc.public_subnet_arns
}
