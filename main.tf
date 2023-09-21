module "aws_ec2" {
  source = "./modules/aws-ec2"

  aws_ec2_ami = var.aws_ami
}