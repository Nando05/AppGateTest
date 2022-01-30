module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.1.96.0/24"

  azs             = ["us-west-2a"]
  private_subnets = ["10.1.96.32/27","10.1.96.64/27","10.1.96.96/27"]
  public_subnets  = ["10.1.96.128/27", "10.1.96.160/27"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}