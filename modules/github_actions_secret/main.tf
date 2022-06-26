
data "github_actions_public_key" "pubkey" {
  repository            = var.repository
}

resource "github_actions_secret" "secret" {
    repository          = var.repository
    secret_name         = var.name
    plaintext_value     = var.value
}

variable "repository" {
    type                = string  
}

variable "name" {
    type                = string
}

variable "value" {
    type                = string
}

