output "aks_name" {
  value = module.aks.aks_name
}

output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}

output "redis_host" {
  value = module.redis.redis_host
}

output "acr_login_server" {
  value = module.weather_app.acr_login_server
}
