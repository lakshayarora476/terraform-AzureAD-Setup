resource "azurerm_resource_group" "AD" {
  name     = "ADRG"
  location = "West US"
}

resource "azuread_user" "terraform_user" {
  user_principal_name = var.userprinciplename
  display_name        = var.displayname
  password            = var.password

}
resource "azuread_group" "terraform_group" {
  name = var.group_name
}

