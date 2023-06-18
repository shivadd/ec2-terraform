provider "aws" {
  region     = "us-east-1"
  access_key = "xxxxxxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxx"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  key_name               = "amitest"
  monitoring             = true
  vpc_security_group_ids = ["sg-0dd290bf175c8d27f"]
  
  tags = {
    Name = "terraform-instance"
    Terraform   = "true"
    Environment = "dev"
  }
}
