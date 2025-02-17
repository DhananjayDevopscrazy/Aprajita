
resource "azurerm_resource_group" "myrg" {
  for_each = var.rgg
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_network_security_group" "mynsg" {
  for_each = var.nsgg
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  dynamic "security_rule" {
   for_each = each.value.nsggs != null ? [""] : []
    content  {
    name                       = security_rule.value.name
    priority                   = security_rule.value.priority
    direction                  = security_rule.value.direction
    access                     = security_rule.value.access
    protocol                   = security_rule.value.protocol
    source_port_range          = security_rule.value.source_port_range
    destination_port_range     = security_rule.value.destination_port_range
    source_address_prefix      = security_rule.value.source_address_prefix
    destination_address_prefix = security_rule.value.destination_address_prefix
    }


}
}
# resource "azurerm_subnet_network_security_group_association" "sg_association" {
#   # subnet_id                 = var.subnet_id
#   # network_security_group_id = var.network_security_group_id  
  
  
#   subnet_id                 = data.azurerm_subnet.this_sub[each.key].id
#   network_security_group_id = azurerm_network_security_group.mynsg[each.key].id
# }