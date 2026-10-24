
output "resource_group_name" {
  description = "Nombre del Resource Group creado"
  value       = azurerm_resource_group.main.name
}

output "app_service_plan_id" {
  description = "ID del App Service Plan"
  value       = azurerm_service_plan.main.id
}

output "web_app_name" {
  description = "Nombre de la Web App"
  value       = azurerm_linux_web_app.main.name
}

output "web_app_url" {
  description = "URL publica de la Web App"
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "virtual_network_name" {
  description = "Nombre de la red virtual"
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_address_space" {
  description = "Rango de la red virtual"
  value       = azurerm_virtual_network.main.address_space
}

output "subnet_name" {
  description = "Nombre de la subred"
  value       = azurerm_subnet.app_service.name
}

output "subnet_address_prefixes" {
  description = "Rangos IP de la subred"
  value       = azurerm_subnet.app_service.address_prefixes
}
