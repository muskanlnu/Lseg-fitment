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
  source        = "../Module_1/VNET_MODULE"
  prefix        = "lseg-assignment-testing"
  location      = "East US"
  address_space = ["10.13.0.0/16"]
    subnets = {
        subnet_1 = {
        name             = "subnet1"
        address_prefixes = ["10.13.1.0/24"]
        }
    }
}