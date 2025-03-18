output "id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.acr.id
}

output "login_server" {
  description = "The login server of the Container Registry."
  value       = azurerm_container_registry.acr.login_server
}

output "admin_enabled" {
  description = "Whether or not the admin user is enabled for the Container Registry."
  value       = azurerm_container_registry.acr.admin_enabled
}

output "sku" {
  description = "The SKU of the Container Registry."
  value       = azurerm_container_registry.acr.sku
}

output "anonymous_pull_enabled" {
  description = "Whether or not anonymous pull is enabled for the Container Registry."
  value       = azurerm_container_registry.acr.anonymous_pull_enabled
}

output "admin_username" {
  description = "The admin username of the Container Registry."
  value       = azurerm_container_registry.acr.admin_username
}

output "admin_password" {
  description = "The admin password of the Container Registry."
  value       = azurerm_container_registry.acr.admin_password
  sensitive   = true
}