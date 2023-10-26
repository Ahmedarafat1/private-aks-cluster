terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.25.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "{your subscription id}"
    resource_group_name  = "rg-tfstate-cac"
    storage_account_name = "satfstatecac"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "{your subscription id}"
  features {}
}