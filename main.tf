resource "aws_instance" "demo" {
  ami           = var.aws_ami
  instance_type = "t2.micro"
  tags          = {
    Name = "terraform-demo"
  }
}
