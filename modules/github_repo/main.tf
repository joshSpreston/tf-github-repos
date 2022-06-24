

resource "github_repository" "repo" {
    name            = var.repo_name
    description     = var.repo_description
    visibility      = var.repo_visibility
    has_issues      = var.repo_has_issues
    has_projects    = var.repo_has_projects
    has_wiki        = var.repo_has_wiki
}

resource "github_branch" "branch" {
    for_each        = toset(var.repo_branches)

    repository      = github_repository.repo.name
    branch          = each.value
}