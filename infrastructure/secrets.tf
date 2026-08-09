terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
}

resource "random_bytes" "cookie_secret" {
  length = 32
}

resource "github_actions_secret" "cookie_secret" {
  repository      = "prometheus-by-vincent"
  secret_name     = "OAUTH2_PROXY_COOKIE_SECRET"
  plaintext_value = base64encode(random_bytes.cookie_secret.base64)
}
