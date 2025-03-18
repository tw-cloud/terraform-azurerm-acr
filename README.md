## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.23 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | The name of the Azure SQL Database. | `string` | n/a | yes |
| <a name="input_admin_enabled"></a> [admin\_enabled](#input\_admin\_enabled) | Enable the admin user for the Azure Container Registry. | `bool` | `true` | no |
| <a name="input_anonymous_pull_enabled"></a> [anonymous\_pull\_enabled](#input\_anonymous\_pull\_enabled) | Enable anonymous pull for the Azure Container Registry. | `bool` | `false` | no |
| <a name="input_georeplications"></a> [georeplications](#input\_georeplications) | A list of objects containing the location of the geo-replication. | <pre>list(object({<br/>    location                  = string<br/>    regional_endpoint_enabled = optional(bool, null)<br/>    zone_redundancy_enabled   = optional(bool, null)<br/>    tags                      = optional(map(string), null)<br/>  }))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the Azure SQL Database. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Azure SQL Database. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU of the Azure Container Registry. | `string` | `"Standard"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_enabled"></a> [admin\_enabled](#output\_admin\_enabled) | Whether or not the admin user is enabled for the Container Registry. |
| <a name="output_admin_password"></a> [admin\_password](#output\_admin\_password) | The admin password of the Container Registry. |
| <a name="output_admin_username"></a> [admin\_username](#output\_admin\_username) | The admin username of the Container Registry. |
| <a name="output_anonymous_pull_enabled"></a> [anonymous\_pull\_enabled](#output\_anonymous\_pull\_enabled) | Whether or not anonymous pull is enabled for the Container Registry. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Container Registry. |
| <a name="output_login_server"></a> [login\_server](#output\_login\_server) | The login server of the Container Registry. |
| <a name="output_sku"></a> [sku](#output\_sku) | The SKU of the Container Registry. |
