
output name {
  value       = ""
  sensitive   = true
  description = "description"
  depends_on  = []
}


output "storage_account_name" {
  value = azurerm_storage_account.tfstate.name
}


output "container_name" {
  value = azurerm_storage_container.tfstate.name
}