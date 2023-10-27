resource "azurerm_public_ip_prefix" "pipprefix" {
  name                = module.pipprefix_name.naming_convention_output[var.naming_convention_info.name].names.0
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  ip_version          = var.ip_version
  prefix_length       = 31
  zones               = var.zones
  tags                = module.pipprefix_name.naming_convention_output[var.naming_convention_info.name].tags.0
}

