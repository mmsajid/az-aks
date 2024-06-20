
variable location {   
    description = "The Azure Region in which the resources will be deployed"
    type = string
    default = "UK South"
}

variable environment {
    type = string
    default = "dev"
}

variable resource_group_name {
    type = string
    default = "myResourceGroup"
}

variable storage_account_name {
    type = string
    default = "myStorageAccount"
}

variable container_name {
    type = string
    default = "myContainer"
}

variable key {
  type = string
  default = "terraform.tfstate"
}

variable aks_cluster_name {
  type = string
  default = "myAKSCluster"
}
