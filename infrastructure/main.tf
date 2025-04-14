provider "azurerm" {
  features {}
}

module "backend" {
  source              = "./backend"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source              = "./network"
  vnet_name           = "vnet-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks" {
  source              = "./aks"
  cluster_name        = "aks-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = "aks${var.environment}"
  node_count          = var.aks_node_count
  subnet_id           = module.network.aks_subnet_id
}

module "redis" {
  source              = "./redis"
  redis_name          = "redis-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "weather_app" {
  source              = "./weather_app"
  acr_name            = "acr${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
}
