resource "aws_instance" "insatnce_2" {
  count = var.ec2_count
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}