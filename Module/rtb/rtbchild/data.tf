data "azurerm_subnet" "subnet" {
  # for_each = var.subnetblock
  # name                 = each.value.name
  # virtual_network_name = each.value.virtual_network_name
  # resource_group_name  = each.value.resource_group_name
      name                = "default"
    virtual_network_name = "eastrgvnet"
    resource_group_name  = "eastrg"
}