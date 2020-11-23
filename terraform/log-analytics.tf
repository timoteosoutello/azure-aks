resource "azurerm_log_analytics_workspace" "insights" {
  name                = "logs-${var.cluster_name}"
  location            = azurerm_resource_group.resource_group_aks.location
  resource_group_name = azurerm_resource_group.resource_group_aks.name
  retention_in_days   = var.logs_retention_days
  tags                = local.default_tags
}