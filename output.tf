output "pipprefix_output" {
  value = {
    name = azurerm_public_ip_prefix.pipprefix.name
    id   = azurerm_public_ip_prefix.pipprefix.id
  }
}