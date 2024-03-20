locals {
  file_name = yamldecode(file("../virtualmachine.yaml"))
}



resource "aws_instance" "insatnce_2" {
#   count = var.ec2_count
  
  for_each = local.file_name.demo-ec2
  ami           = local.file_name.demo-ec2.name
  instance_type = var.instance_type

  tags = {
    Name = each.key
  }
}