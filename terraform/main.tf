terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

data "aws_ami" "images"{
  for_each = {
    for key, value in var.list_vm : key=>value
  }
  name = each.value.image
}


resource "aws_instance" "instance" {
  for_each = var.list_vm
  name = each.key
  image_ref = data.aws_ami.images[each.key].id

}

# resource "aws_instance" "insatnce_2" {
#   ami           = "ami-06f64fb0331ab61a0"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld_2"
#   }
# }

