module "monitoring_prometheus" {
  source = "../../modules/monitoring-prometheus"

  values_file = abspath("${path.root}/../../../monitoring/helm-values/prometheus.yaml")
}

module "monitoring_loki" {
  source      = "../../modules/monitoring-loki"
  values_file = abspath("${path.root}/../../../monitoring/helm-values/loki.yaml")
}

module "monitoring_alloy" {
  source      = "../../modules/monitoring-alloy"

  values_file = abspath("${path.root}/../../../monitoring/helm-values/alloy.yaml")
}