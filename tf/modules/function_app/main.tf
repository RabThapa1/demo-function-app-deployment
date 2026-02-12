resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.environment}-${var.instance}-${var.location_abbr}-${format("%02d", var.index)}"
  location = var.location
}

resource "azurerm_storage_account" "st" {
  name = "st${var.environment}${var.instance}${var.location_abbr}${format("%02d", var.index)}"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_service_plan" "sp" {
  name                = "asp-${var.environment}-${var.instance}-${var.location_abbr}-${format("%02d", var.index)}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_function_app" "example" {
  name                = "apf-${var.environment}-${var.instance}-${var.location_abbr}-${format("%02d", var.index)}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  service_plan_id = azurerm_service_plan.sp.id
  storage_account_name       = azurerm_storage_account.st.name
  storage_account_access_key = azurerm_storage_account.st.primary_access_key

  site_config {}
}