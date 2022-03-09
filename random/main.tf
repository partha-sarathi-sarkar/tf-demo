terraform {
    required_providers {
    random = {
      source = "hashicorp/random"
      version = "2.3.0"
    }
  }
}

module "random_number" {
  source  = "./modules/randomnumber"
  number_min = var.number_min
  number_max = var.number_max
}