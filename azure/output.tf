#output "osdiskid" {
 # value = module.manageddisk.osdiskid
#}

output "vnetid" {
  value = module.vnet.vnetid
}

output "subnetid" {
  value = module.subnet.subnetid
}

output "nicid" {
  value = module.nic.nicid
}

output "vmid" {
  value = module.vm.vmid
}
