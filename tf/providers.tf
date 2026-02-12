terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.59.0"

    }
  }
  backend "azurerm" {
    resource_group_name  = "BackEndResourceGroupName"
    storage_account_name = "StorageAccountName"
    container_name       = "ContainerName"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "abc-abc-abc-abc"
}