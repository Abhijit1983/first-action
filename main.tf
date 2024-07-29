terraform {
  backend "azurerm" {
    resource_group_name   = "str1242"
    storage_account_name  = "str1242"
    container_name        = "statefile"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources3"
  location = "East US"
}