variable "github_owner" {}

variable "github_repositories" {
    type = map(object({

        name                = string
        description         = string
        visibility          = string

        has_issues          = bool
        has_projects        = bool
        has_wiki            = bool
        has_downloads       = bool

        branches            = list(string)
    }))
}

variable "github_secrets" {
    type = map(object({
        repo_name           = string
    }))  
}

# terraform plan -var env_secrets={\"LINODE_TOKEN\":\"$(bw get password linode_token)\", \"TOKEN2\":\"$(bw get password token2)\"}
# results in the following map within terraform:
#
# var.env_secrets = {
#   "LINODE_TOKEN": "ABCDEFG0123456789",
#   "TOKEN2": "1234567890ABCDEFG"   
# }

variable "env_secrets" {
    type = map(string)
    description = "ENV name to token value mapping.  Values MUST be supplied via cli -var parameter."
}