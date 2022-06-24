output "full_name" {
    value   = github_repository.repo.full_name  
}

output "html_url" {
    value   = github_repository.repo.html_url
}

output "ssh_clone_url" {
    value   = github_repository.repo.ssh_clone_url
}

output "http_clone_url" {
    value   = github_repository.repo.http_clone_url
}

output "git_clone_url" {
    value   = github_repository.repo.git_clone_url
}

output "repo_id" {
    value   = github_repository.repo.repo_id
}

output "branches" {
    value   = github_repository.repo.branches
}