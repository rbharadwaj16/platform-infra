output "name" {
  description = "Resource group name."
  value       = azurerm_resource_group.this.name
}

output "resource_id" {
  description = "Resource group ID."
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Resource group location."
  value       = azurerm_resource_group.this.location
}

output "tags" {
  description = "Resource group tags."
  value       = azurerm_resource_group.this.tags
}