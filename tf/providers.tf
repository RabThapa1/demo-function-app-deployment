terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.59.0"

    }
  }
}

provider "azurerm" {
  features{}
  subscription_id = "672b7821-c844-4e09-9a36-15f50e864d0b"
}