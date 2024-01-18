terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}


resource "azurerm_resource_group" "tags" {
  name     = "example-resource-group"
  location = "south central US"

  tags = {
    Environment = "Production"
    Department  = "IT"
    Project     = "TerraformDemo"
  }
}

