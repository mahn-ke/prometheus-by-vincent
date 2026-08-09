resource "random_password" "cookie_secret" {
  length  = 32
  special = false
}

resource "github_actions_secret" "cookie_secret" {
  repository      = "prometheus-by-vincent"
  secret_name     = "OAUTH2_PROXY_COOKIE_SECRET"
  plaintext_value = random_password.cookie_secret.result
}
