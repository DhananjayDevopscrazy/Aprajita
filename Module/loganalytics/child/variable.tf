variable "rg" {
    description = "this is rg details"
    type = map(object({
      name     = string
      location = string
    }))
  
}
variable "law_name" {
    description = "this is rg details"
    type = map(object({
  name                     = string
  location                 = string
  resource_group_name      = string
  sku                      = string
  retention_in_days        = number
  allow_resource_only_permissions = bool
  daily_quota_gb           = string
  cmk_for_query_forced     = string
  internet_ingestion_enabled = bool
  internet_query_enabled   = bool
  immediate_data_purge_on_30_days_enabled = bool
  reservation_capacity_in_gb_per_day = number   
  # local_authentication_disabled = bool
  # data_collection_rule_id = var.data_collection_rule_id
    }))
  
}