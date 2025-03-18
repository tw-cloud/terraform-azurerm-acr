variable "acr_name" {
  description = "The name of the Azure SQL Database."
  type        = string
}

variable "location" {
  description = "The location of the Azure SQL Database."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure SQL Database."
  type        = string
}

variable "admin_enabled" {
  description = "Enable the admin user for the Azure Container Registry."
  type        = bool
  default     = true
}

variable "sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
  default     = "Standard"

  validation {
    condition     = var.sku != "Basic" || var.sku != "Standard" || var.sku != "Premium"
    error_message = "The SKU must be 'Basic', 'Standard', or 'Premium'."
  }
}

variable "georeplications" {
  description = "A list of objects containing the location of the geo-replication."
  type = list(object({
    location                  = string
    regional_endpoint_enabled = optional(bool, null)
    zone_redundancy_enabled   = optional(bool, null)
    tags                      = optional(map(string), null)
  }))
  default = []
}

variable "anonymous_pull_enabled" {
  description = "Enable anonymous pull for the Azure Container Registry."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}