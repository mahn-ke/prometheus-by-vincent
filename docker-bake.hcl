group "default" {
  targets = ["prometheus"]
}

target "prometheus" {
  context = "service"
  tags = ["ghcr.io/mahn-ke/prometheus-by-vincent/prometheus:latest"]
  platforms = ["linux/amd64"]
  labels = {
    "org.opencontainers.image.source" = "https://github.com/mahn-ke/prometheus-by-vincent"
  }
}
