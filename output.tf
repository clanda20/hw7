output "lb_ip" {
  value = kubernetes_deployment.hello-http.spec.0.template.0.spec[0].container[0].image
}
