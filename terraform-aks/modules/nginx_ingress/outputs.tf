output "ingress_namespace" {
  description = "Namespace where NGINX Ingress is deployed"
  value       = helm_release.nginx_ingress.namespace
}

output "ingress_release_name" {
  description = "Name of the Helm release"
  value       = helm_release.nginx_ingress.name
}

output "ingress_chart_version" {
  description = "Version of the deployed Helm chart"
  value       = helm_release.nginx_ingress.version
}
