# Learning Terraform

This project is learning using Terraform with AWS

## Install Terraform

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## Install AWS

* install aws
* create IAM user 
* setup ~/.aws/credentials ( aws configure )

## Usage 

terraform plan -var-file=env/aws-ue2.tfvars
terraform apply -var-file=env/aws-ue2.tfvars