
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  address_space = var.vnet_address_space

  tags = {
    Proyecto = "Examen Terraform"
    Ambiente = "Dev"
  }
}

resource "azurerm_subnet" "app_service" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = var.subnet_address_prefixes

  delegation {
    name = "delegacion-app-service"

    service_delegation {
      name = "Microsoft.Web/serverFarms"

      actions = [
        "Microsoft.Network/virtualNetworks/subnets/action"
      ]
    }
  }
}
