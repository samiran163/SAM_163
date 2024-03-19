locals {
    variables = yamldecode(file("../virtualmachine.yml"))
}

module "vm" {
    source = ../../terraform/main
    list_vm = local.variables.vm

}