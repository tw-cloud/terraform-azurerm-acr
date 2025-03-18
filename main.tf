resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  location            = var.location
  resource_group_name = var.resource_group_name

  admin_enabled = var.admin_enabled
  sku           = var.sku

  dynamic "georeplications" {
    for_each = var.georeplications

    content {
      location                  = georeplications.value.location
      regional_endpoint_enabled = georeplications.value.regional_endpoint_enabled
      zone_redundancy_enabled   = georeplications.value.zone_redundancy_enabled
      tags                      = georeplications.value.tags
    }
  }

  anonymous_pull_enabled = var.anonymous_pull_enabled

  tags = local.tags
}
