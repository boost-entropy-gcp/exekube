release_spec = {
  enabled        = false
  release_name   = "ci"
  release_values = "values.yaml"

  chart_repo    = "stable"
  chart_name    = "jenkins"
  chart_version = "0.12.0"

  domain_name = "ci.swarm.pw"
}
