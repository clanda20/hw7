resource "kubernetes_deployment" "hello-http" {
  metadata {
    name = "scalable-hellohttp"
    labels = {
      App = "hello-http"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "hello-http"
      }
    }
    template {
      metadata {
        labels = {
          App = "hello-http"
        }
      }
      spec {
        container {
          image = "nginx:1.7.8"
          name  = "scalable-hellohttp"

          port {
            container_port = 8080
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
