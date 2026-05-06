variable "resource_group_name" {
  description = "Name of the resource group to be created"
  type        = string
  
}

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string
}

variable "context" {
  
}

variable "tags" {
  description = "Tags to be applied to the resource group"
  type        = map(string)
  default     = {}
}