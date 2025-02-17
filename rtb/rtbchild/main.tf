resource "azurerm_resource_group" "rg" {
  for_each = var.rgroup
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_route_table" "rtb" {
  depends_on = [ azurerm_resource_group.rg ]
  for_each = var.routtable
  name     = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  dynamic "route" {
        for_each = each.value.routs != null ? each.value.routs : []
        # for_each = each.value.routs
    content {
    name           = route.value.name
    address_prefix = route.value.address_prefix
    next_hop_type  = route.value.next_hop_type


    }

  }
}

resource "azurerm_subnet_route_table_association" "sub_assoc" {
  depends_on = [ azurerm_route_table.rtb ]
  # for_each = var.subnetblock
  subnet_id      = data.azurerm_subnet.subnet.id
  route_table_id = azurerm_route_table.rtb.id
}
