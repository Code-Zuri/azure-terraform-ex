
resource "azurerm_service_plan" "main" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  os_type  = "Linux"
  sku_name = var.app_service_sku

  tags = {
    Proyecto = "Examen Terraform"
    Ambiente = "Dev"
  }
}

resource "azurerm_linux_web_app" "main" {
  name                = var.web_app_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  service_plan_id = azurerm_service_plan.main.id

  https_only                = true
  virtual_network_subnet_id = azurerm_subnet.app_service.id

  site_config {
    always_on = true

    application_stack {
      node_version = "20-lts"
    }
  }

  tags = {
    Proyecto = "Examen Terraform"
    Ambiente = "Dev"
  }
}
