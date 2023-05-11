terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.55.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = ""
  client_secret   = ""
  tenant_id       = ""
  subscription_id = ""
}