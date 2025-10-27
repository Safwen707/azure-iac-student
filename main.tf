resource "azurerm_resource_group" "rg" {
  name     = "rg-student-demo"
  location = "Norway East"
}

resource "azurerm_service_plan" "plan" {
  name                = "student-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "student-demo-app-${random_id.suffix.hex}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}
