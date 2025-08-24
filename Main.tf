resource "azurerm_resource_group" "aks_rg" {
  name     = "Loveaks-resource-group"
  location = "East US"
}

resource "azurerm_resource_group" "aks_rg" {
  name     = "Loveaks-resource-group"
  location = "East US"
}



resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "LoveneeshAKSCluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "myakscluster"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  #kubernetes_version = "1.27.103" # Update if needed

  tags = {
    Environment = "Dev"
  }
}

