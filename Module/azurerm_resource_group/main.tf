resource "azurerm_resource_group" "rg" {
  for_each = var.resourcegroups
  name     = "$(each.value.name)-$(var.env)-$(each.value.azureregion)-rg"
  location = "var.location"
  tags     = var.tags
}