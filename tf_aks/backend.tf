
# Set up the blob storage backend

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstatedev0d1p9"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
