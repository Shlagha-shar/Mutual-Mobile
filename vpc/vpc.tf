module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"

  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs  = var.vpc_availability_zones

  enable_nat_gateway   = var.vpc_enable_nat_gateway
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  private_subnets     = var.vpc_private_subnets
  private_subnet_tags = {
    Type = "Private Subnets"
  }

  public_subnets     = var.vpc_public_subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
}

