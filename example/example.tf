locals {
  naming_convention_info = {
    name         = "001"
    env          = "dev"
    agency_code  = "boj"
    project_code = "mer"
    zone         = "1"
    tier         = "app"
  }
  tags = {
    "Environment" = "Dev"
    "Owner"       = "DevOps"
    "Project"     = "MyProject"
  }
}


module "resource_groups" {
  source = "git::https://github.com/BrettOJ/tf-az-module-resource-group?ref=main"
  resource_groups = {
    pipprx = {
      name                   = var.resource_group_name
      location               = var.location
      naming_convention_info = local.naming_convention_info
      tags                   = local.tags
    }
  }
}

module "azurerm_public_ip_prefix" {
  source                  = "git::https://github.com/BrettOJ/tf-az-module-network-public-ip-prefix?ref=main"
  location                = var.location
  resource_group_name     = var.resource_group_name
  naming_convention_info = local.naming_convention_info
  sku                     = var.sku
  ip_version              = var.ip_version
  prefix_length           = 31
  zones                   = var.zones
  tags                    = local.tags
}
