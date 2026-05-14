variable "name" {
  description = "Explicit resource group name. If provided, this overrides context-based naming."
  type = string
  default = null
}

variable "location" {
  description = "Azure region where the resource group will be created."
  type = string
}

