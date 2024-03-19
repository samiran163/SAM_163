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

resource "aws_instance" "test" {
  ami           = "ami-06f64fb0331ab61a0"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "test_1" {
  ami           = "ami-06f64fb0331ab61a0"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld_2"
  }
}

