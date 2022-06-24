variable "repo_name" {
    type        = string
}

variable "repo_description" {
    type        = string
}

variable "repo_visibility" {
    type        = string
    default     = "public"
}

variable "repo_has_issues" {
    type        = bool
    default     = false
}

variable "repo_has_projects" {
    type        = bool
    default     = false
}

variable "repo_has_wiki" {
    type        = bool
    default     = false
}

variable "repo_branches" {
    type        = list(string)
    default     = ["main"]  
}

