variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources in"
}

variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, test, prod)"
}

variable "aks_node_count" {
  type        = number
  default     = 2
  description = "Number of nodes in the AKS cluster"
}
