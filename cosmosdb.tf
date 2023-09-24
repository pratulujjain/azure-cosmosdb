resource "azurerm_cosmosdb_account" "cosmosdb1995" {
  name                = "cosmosdb1995"
  location            = local.location
  resource_group_name = local.resource_group_name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level       = "Session"
  }

  geo_location {
    location          = local.location
    failover_priority = 0
  }
  depends_on = [ 
    azurerm_resource_group.appgrp
   ]

 }
