# Learning Terraform

This project is learning using Terraform with AWS

## 1. Premise: Install Terraform

[Official Dos for Installing Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## 2. Premise: Install AWS

* install aws
* create IAM user 
* setup ~/.aws/credentials ( aws configure )

## 3. Usage 

Best practice, always check PLAN before APPLY

```bash
terraform plan -var-file=env/aws-ue2.tfvars
```

```bash
terraform apply -var-file=env/aws-ue2.tfvars
```

```bash
terraform state list
```

```bash
terraform state show module.aws_ec2.aws_instance.demo
```

```bash
terraform destroy -var-file=env/aws-ue2.tfvars
```


## 4. About Manage IaC

### Terraform Backend

with Gitlab: https://docs.gitlab.com/ee/user/infrastructure/iac/
with Github: https://www.hashicorp.com/blog/managing-github-with-terraform

### State File Isolation with Workspaces

terraform workspace show
terraform workspace list

terraform workspace new dev
terraform workspace select dev

* The state file for all of your workspaces are stored in the same backend, that means same authentication and access controls for all.
* Workspaces are not visible in the code or on the terminal unless you run commands, this makes maintenance difficult because you can't see the picture
* workspace is error-prone and not secure enough

### State File Isolation with File Layout

* put Terraform configuration files for each environment in a separate folder
* configure different backend for each environment, using different authentication mechanisms and access control.
* duplicated code can be solved by modules

## Security 

export TF_VAR_db_password="YOUR_DB_PASSWORD"


##

terraform console
> format("%.3f", 3.14159265359)