r_rg = {
  "rg1" = {
    name     = "fisrtrg1"
    location = "east us"

  },
  "rg2" = {
    name     = "secondrg2"
    location = "west us"

  }
}

r_law_name = {
  "law1" = {
    name                                    = "thisisfirstrglaw"
    location                                = "east us"
    resource_group_name                     = "fisrtrg1"
    sku                                     = "PerGB2018"
    retention_in_days                       = 30
    allow_resource_only_permissions         = true
    daily_quota_gb                          = -1
    cmk_for_query_forced                    = false
    internet_ingestion_enabled              = true
    internet_query_enabled                  = true
    immediate_data_purge_on_30_days_enabled = false
    reservation_capacity_in_gb_per_day      = 100

  },
  "law2" = {
    name                                    = "thiissecondrglaw"
    location                                = "west us"
    resource_group_name                     = "secondrg2"
    sku                                     = "PerGB2018"
    retention_in_days                       = 30
    allow_resource_only_permissions         = true
    daily_quota_gb                          = -1
    cmk_for_query_forced                    = false
    internet_ingestion_enabled              = true
    internet_query_enabled                  = true
    immediate_data_purge_on_30_days_enabled = false
    reservation_capacity_in_gb_per_day      = 100

  }
}