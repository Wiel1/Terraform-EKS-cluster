resource "helm_release" "nginx" {
  name       = "nginx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  values = [
    file("${path.module}/config/nginx-values.yaml")
  ]
}