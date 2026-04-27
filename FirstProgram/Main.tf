terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}

provider "azurerm" {
  feature {}
}
resource "azurerm_resource_group" "exa" {
  name     = "Jenkin_example-resource-group"
  location = "East US"
 }
