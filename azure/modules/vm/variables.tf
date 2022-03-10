variable "vmname" {
}

variable "location" {
}

variable "resource_group_name" {
}

variable "vmsize" {
  default = "Standard_B1ms"
}

variable "computer_name" {
  default = "hostname"
}

variable "admin_username" {
  default = "testadmin"
}

variable "admin_password" {
  default = "Password1234"
}

variable "environment" {
}

variable "nicid" {
}

# variable "osdiskid" {
# }