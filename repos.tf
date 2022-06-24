
module "gh_repos" {
    source              = "./modules/github_repo"
    for_each            = var.github_repositories

    repo_name           = each.value.name
    repo_description    = each.value.description
    repo_visibility     = each.value.visibility 
    repo_has_issues     = each.value.has_issues
    repo_has_projects   = each.value.has_projects
    repo_has_wiki       = each.value.has_wiki
    repo_branches       = each.value.branches

}
