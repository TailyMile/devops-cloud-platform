resource "helm_release" "loki" {
  name       = "loki"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"

  namespace        = "monitoring"
  create_namespace = true

  values = [
    file(var.values_file)
  ]
}