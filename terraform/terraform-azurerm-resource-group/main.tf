resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = local.location
  tags     = var.tags

  lifecycle {
    precondition {
      condition     = local.resource_group_name != null
      error_message = "Either name or context must be provided."
    }

    precondition {
      condition     = can(regex("^[a-zA-Z0-9._()\\-]{1,90}$", local.resource_group_name))
      error_message = "Resource group name must be 1-90 characters and contain only letters, numbers, periods, underscores, parentheses, or hyphens."
    }
  }
}