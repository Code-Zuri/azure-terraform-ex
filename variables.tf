
variable "subscription_id" {
  description = "ID de la suscripcion de Azure"
  type        = string
}

variable "location" {
  description = "Region de Azure"
  type        = string
  default     = "Central US"
}

variable "resource_group_name" {
  description = "Nombre del Resource Group"
  type        = string
  default     = "rg-utvt-examen-dev-mxc-001"
}

variable "app_service_plan_name" {
  description = "Nombre del App Service Plan"
  type        = string
  default     = "asp-utvt-examen-dev-mxc-001"
}

variable "web_app_name" {
  description = "Nombre global de la Web App"
  type        = string
  default     = "app-utvt-examen-web-dev-mxc-001"
}

variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
  default     = "vnet-utvt-examen-dev-mxc-001"
}

variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
  default     = "snet-utvt-examen-app-dev-mxc-001"
}

variable "vnet_address_space" {
  description = "Rango de direcciones de la red virtual"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "Rango de direcciones de la subred"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "app_service_sku" {
  description = "Nivel del App Service Plan"
  type        = string
  default     = "B1"
}
