provider "aws" {
  region = "us-east-1" 
}

# Create VPC with public and private subnets, NAT, and IGW
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 2.0"

  name                 = "my-vpc"
  cidr                 = "10.0.0.0/16"
  azs                  = ["us-east-1a", "us-east-1b"]
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets       = ["10.0.101.0/24", "10.0.102.0/24"]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true
}

# Create EC2 instances in the private subnet
resource "aws_instance" "ec2_instance" {
  count         = 2
  ami           = "ami-ec2image" # Specify a valid AMI for Linux or Windows
  instance_type = "t2.micro"              
  subnet_id     = module.vpc.private_subnets[count.index]
  key_name      = "sample ec2"     

  tags = {
    Name = format("Instance%02d", count.index + 1)
  }
}
