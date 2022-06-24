

resource "github_branch_protection" "branch" {
    repository_id       = var.repository_id
    pattern             = var.pattern
    enforce_admins      = var.enforce_admins
    allows_force_pushes = var.allow_force_pushes
}