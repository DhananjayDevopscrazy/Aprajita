provider "azurerm" {
  features {
    
  }
}


resource "azurerm_resource_group" "example" {
  for_each = var.rg
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_log_analytics_workspace" "example" {
depends_on = [ azurerm_resource_group.example ]
for_each = var.law_name
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  sku                      = each.value.sku
  retention_in_days        = each.value.retention_in_days
  allow_resource_only_permissions = each.value.allow_resource_only_permissions
  daily_quota_gb           = each.value.daily_quota_gb
  cmk_for_query_forced     = each.value.cmk_for_query_forced
  internet_ingestion_enabled = each.value.internet_ingestion_enabled
  internet_query_enabled   = each.value.internet_query_enabled
  immediate_data_purge_on_30_days_enabled = each.value.immediate_data_purge_on_30_days_enabled
  # local_authentication_disabled = each.value.local_authentication_disabled
  # data_collection_rule_id = var.data_collection_rule_id
  
}