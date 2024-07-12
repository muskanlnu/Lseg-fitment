output "subnet_ids_out" {
  value = azurerm_virtual_network.vnet.subnet[*].id
  description = "The IDs of the subnets in the virtual network"
}