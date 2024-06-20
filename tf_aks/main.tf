resource "azurerm_resource_group" "rgaks" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rgaks.location
  resource_group_name = azurerm_resource_group.rgaks.name
  dns_prefix          = "aks-cluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.environment
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks-cluster.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks-cluster.kube_config_raw
  sensitive = true
}