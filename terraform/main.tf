# locals {
#   file_name = yamldecode(file("virtualmachine.yaml"))
# }

module "demo-ec2" {  
  source = "./modules/ec2"
  # list_vm = local.file_name.demo-ec2
  # list_ami = local.file_name.img
  # ami = local.file_name.img
}
