terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"             # Make sure this exists
    storage_account_name = "devbootcamptfstate" # Must be globally unique
    container_name       = "tfstate"            # Make sure this exists

  }
}


