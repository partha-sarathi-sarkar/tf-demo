variable "client_secret" {
  type = string
  default = ""
}

variable "client_id" {  
  type = string
  default = ""
}

variable "subscription_id" {
  type = string
  default = ""
}

variable "tenant_id" {
  type = string
  default = ""
}

########################################################



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

variable "osdiskname" {
  default = "defaultosdisk"
}
