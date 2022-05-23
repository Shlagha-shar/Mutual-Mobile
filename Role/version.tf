terraform {
  backend "local" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  required_version = ">= 0.14"
}
provider "aws" {
  access_key = "AKIA257BQN2DHFBYX6FD"
  secret_key = "=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"
  region     = "us-west-1"

#   assume_role {
#     # The role ARN within Account B to AssumeRole into. Created in step 1.
    # role_arn    = "arn:aws:iam::751555341958:role/sts-role"
    # role_arn = "arn:aws:iam::751555341958:user/test"
#   }
}