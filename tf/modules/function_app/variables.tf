variable "environment" {
  description = "Deployment environment (e.g. dev, test, prod)"
  type        = string
}

variable "instance" {
  description = "Instance or workload identifier"
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}

variable "location_abbr" {
  description = "Short abbreviation for the Azure region (e.g. ane for Australia East)"
  type        = string
}

variable "index" {
  description = "Instance index used in naming"
  type        = number
}

variable "os_type" {
  description = "Operating system for the App Service Plan (Linux or Windows)"
  type        = string
}

variable "sku_name" {
  description = "SKU name for the App Service Plan (e.g. B1, S1, P1v3)"
  type        = string
}

variable "account_tier"{}

variable "account_replication_type" {}