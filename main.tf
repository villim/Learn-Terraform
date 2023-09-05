resource "aws_instance" "demo" {
  ami           = "ami-0cf0e376c672104d6"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-demo"
  }
}
