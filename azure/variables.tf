variable "resource_group_name" {
  default = "devops-learning"
}
variable "location" {
  default = "East US"
} 

variable "environment" {
  default = "alpha"
}

variable "nsg_name" {
  default = "defaultnsg"
}
variable "vnet_name" {
  default = "defaultvnet"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "vmname" {
  default = "defaultvm"
}
