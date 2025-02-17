terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.104.2"
    }
  }
}

provider "azurerm" {
  features {}
      subscription_id = "87679cfd-6705-4bcd-a782-e10e42102d58"
}
