resource "helm_release" "alloy" {
  name             = "alloy"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "alloy"

  namespace        = "monitoring"
  create_namespace = true

  values = [
    file(var.values_file)
  ]
}