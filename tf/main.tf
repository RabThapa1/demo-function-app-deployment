module "function_app" {
  for_each      = var.instances
  source        = "./modules/function_app"
  instance      = each.key
  location      = each.value.location
  environment   = each.value.environment
  location_abbr = each.value.location_abbr
  index         = each.value.index
  os_type       = each.value.os_type
  sku_name      = each.value.sku_name
  account_replication_type = each.value.account_replication
  account_tier = each.value.account_tier
}


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



