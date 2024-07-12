variable "prefix" {
  type        = string
  description = "Prefix to be added to all resources as identifier"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources"
}

variable "address_space" {
  type        = list(string)
  description = "Address space to be used by the virtual network"
  default     = ["10.10.1.0/24"]
}


variable "subnets" {
  type        = map(any)
  description = "Subnets to be created in the virtual network"
  default = {
  #   subnet_1 = {
  #     name             = "subnet1"
  #     address_prefixes = ["10.10.1.0/24"]
  #   },
  #   subnet_2 = {
  #     name             = "subnet2"
  #     address_prefixes = ["10.10.2.0/24"]
  # }
}
}
