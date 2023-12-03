# Terraform AWS VPC and EC2 Instances

This Terraform project deploys a VPC in AWS with public and private subnets, a NAT gateway, an Internet Gateway, and multiple EC2 instances in the private subnet. Each EC2 instance is named with a "Name" tag based on the count of instances.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS credentials with the necessary permissions.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/terraform-aws-vpc-instances.git

Change into the project directory:

In shell command:
1. Copy code
2. cd terraform-aws-vpc-instances
3. Create a terraform.tfvars file and fill in your AWS access key and secret key:
	aws_access_key = "your-aws-access-key"
	aws_secret_key = "your-aws-secret-key"

Initialize the Terraform project:


4. terraform init
5. Review the configurations in main.tf to ensure they match your requirements.

6. Apply the Terraform configuration:
	terraform apply
	When prompted, type yes to confirm the deployment.

	Wait for Terraform to provision the infrastructure.

Once the deployment is complete, you can find information about the created resources in the Terraform output.

.

Configuration Details

main.tf: Defines the main Terraform configuration, including the VPC, subnets, NAT gateway, Internet Gateway, and EC2 instances.
variables.tf: Defines input variables.
outputs.tf: Defines the outputs to display after running Terraform.
terraform.tfvars: Specifies variable values (replace with your own AWS credentials).
provider.tf: Sets up the AWS provider.
