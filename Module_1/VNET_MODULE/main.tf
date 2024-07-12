terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.prefix}"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  address_space       = var.address_space

  dynamic "subnet" {
    for_each = length(var.subnets) > 0 ? var.subnets : {}

    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefixes[0]
    }
  }
}
