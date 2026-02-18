variable "namespace" {
  description = "Kubernetes namespace for NGINX Ingress"
  type        = string
  default     = "ingress-nginx"
}

variable "chart_version" {
  description = "Version of the NGINX Ingress Helm chart"
  type        = string
  default     = "4.8.3"
}

variable "replica_count" {
  description = "Number of NGINX Ingress controller replicas"
  type        = number
  default     = 2
}

variable "service_type" {
  description = "Service type for the NGINX Ingress controller"
  type        = string
  default     = "LoadBalancer"
}

