provider "azurerm" {
  features {}

}

# Use data source instead of creating resource group
data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  sku                 = "Premium"
  admin_enabled       = true
}


resource "azurerm_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = "Southeast Asia"
  resource_group_name = data.azurerm_resource_group.main.name
  os_type             = "Linux"
  sku_name            = "P0v3" # Note: This is a free plan and always_on must be false
}



resource "azurerm_linux_web_app" "linux_web_app" {
  name                = var.app_service_name
  location            = "Southeast Asia"
  resource_group_name = data.azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = false # Must be false for F1
  }
}





