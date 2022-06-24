variable "repository_id" {
    type        = string
}

variable "pattern" {
    type        = string
}

variable "enforce_admins" {
    type        = bool
    default     = true
}

variable "allow_force_pushes" {
    type        = bool
    default     = true
}



