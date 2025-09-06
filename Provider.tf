terraform {
  backend "azurerm" {
    resource_group_name = "Loveaks-resource-group"
    storage_account_name = "stgstate"
    container_name = "terraformstate"
    key = "state.tf"
    
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.1.0"
}
provider "azurerm" {
  features {}

  subscription_id = "96a3eaff-d4cf-4222-9fe7-1622ab46f13e"
}


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.1.0"
}



