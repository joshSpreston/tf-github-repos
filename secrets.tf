

module "gh_secrets" {
    source      = "./modules/github_actions_secret"
    for_each    = var.env_secrets

    repository  = var.github_secrets[each.key].repo_name
#    repository  = each.value.repo_name
    name        = each.key
    value       = each.value  
}