#Create The Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-pvaks-cac"
  location = "canadacentral"
}



