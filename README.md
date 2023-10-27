Manages a Public IP Prefix.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#example-usage)

```
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_public_ip_prefix" "example" {
  name                = "acceptanceTestPublicIpPrefix1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  prefix_length = 31

  tags = {
    environment = "Production"
  }
}
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#name) - (Required) Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#resource_group_name) - (Required) The name of the resource group in which to create the Public IP Prefix. Changing this forces a new resource to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#location) - (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    
-   [`sku`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#sku) - (Optional) The SKU of the Public IP Prefix. Accepted values are `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
    

-   [`ip_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#ip_version) - (Optional) The IP Version to use, `IPv6` or `IPv4`. Changing this forces a new resource to be created. Default is `IPv4`.
    
-   [`prefix_length`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#prefix_length) - (Optional) Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to `28`(16 addresses). Changing this forces a new resource to be created.
    

-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#tags) - (Optional) A mapping of tags to assign to the resource.
    
-   [`zones`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#zones) - (Optional) Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#id) - The Public IP Prefix ID.
-   [`ip_prefix`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#ip_prefix) - The IP address prefix value that was allocated.

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#create) - (Defaults to 30 minutes) Used when creating the Public IP Prefix.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#update) - (Defaults to 30 minutes) Used when updating the Public IP Prefix.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#read) - (Defaults to 5 minutes) Used when retrieving the Public IP Prefix.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#delete) - (Defaults to 30 minutes) Used when deleting the Public IP Prefix.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix#import)

Public IP Prefixes can be imported using the `resource id`, e.g.

```
terraform import azurerm_public_ip_prefix.myPublicIpPrefix /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/publicIPPrefixes/myPublicIpPrefix1
```