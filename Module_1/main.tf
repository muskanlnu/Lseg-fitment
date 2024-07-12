terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }
}

provider "azurerm" {
  features {}
} 

module "vnet" {
  source        = "./VNET_MODULE"
  prefix        = "lseg-assignment"
  location      = "East US"
  address_space = ["10.10.0.0/16"]
  subnets = {
    subnet_1 = {
      name             = "subnet1"
      address_prefixes = ["10.10.1.0/24"]
    },
    subnet_2 = {
      name             = "subnet2"
      address_prefixes = ["10.10.2.0/24"]
  }
  }
}
