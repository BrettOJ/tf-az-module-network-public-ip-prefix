# Variables file for Azure Public IP Prefixes

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Public IP Prefix."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "sku" {
  description = "The SKU of the Public IP Prefix. Accepted values are Standard. Defaults to Standard."
  type        = string
  default     = "Standard"
}

variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4. Default is IPv4."
  type        = string
  default     = "IPv4"
}

variable "prefix_length" {
  description = "Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to 28(16 addresses)."
  type        = number
  default     = 28
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "zones" {
  description = "Specifies a list of Availability Zones in which this Public IP Prefix should be located."
  type        = list(string)
  default     = []
}

variable "naming_convention_info" {
  description = "A map of naming convention info."
  type        = map(string)
}
  
