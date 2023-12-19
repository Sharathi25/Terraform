terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}

  client_id       = "37ca0f99-5f85-4eb3-897a-c9360a312e66"
  client_secret   = "a5da7603-fee9-4c3c-97ab-c27c27fd0005"
  tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  subscription_id = "2213e8b1-dbc7-4d54-8aff-b5e315df5e5b"
}
