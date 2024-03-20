variable "instance_type" { 
  default     = "t2.micro"
  description = "instance type to create to ec2 instance"

}

variable "ami" {  
  description = "ami id to create ec2 instance"
}

variable "ec2_count" {
    description = "number of instance to create ec2"
    default = 2
}
