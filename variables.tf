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