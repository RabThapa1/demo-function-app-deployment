variable "instances" {
  type = map(object({
    location      = string
    environment   = string
    index         = string
    os_type       = string
    sku_name      = string
    location_abbr = string
    account_replication = string
    account_tier = string
  }))
}
