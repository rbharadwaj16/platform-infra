variable "name" {
  description = "Explicit resource group name. If provided, this overrides context-based naming."
  type = string
  default = null
}

variable "location" {
  description = "Azure region where the resource group will be created."
  type = string
}

variable "name" {
  description = "Explicit rg name. If provided, this overrides context-based naming"
}

variable "context" {
  description = "Naming context used to compute the resource group name when name is not provided"
  
  type = object({
    org      = optional(string)
    domain   = optional(string)
    app      = string
    env      = string
    region   = string
    instance  = optional(string)
  })

  default = null
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type = map(string)
  default = {} 
}

variable "required_tag_keys" {
  description = "Required tag keys that must exist and contain non-empty values."
  type        = set(string)
  default     = ["env", "owner", "cost_center"]
}

variable "allowed_locations" {
  description = "Allowed Azure regions. Empty set means no restriction."
  type        = set(string)
  default     = []
}