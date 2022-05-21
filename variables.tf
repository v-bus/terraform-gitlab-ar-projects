# Gitlab Token https://docs.gitlab.com/ee/api/#authentication
variable "gitlab_token" {
  description = "Gitlab Token"
  type        = string
}

variable "gitlab_base_url" {
  description = "This is the target GitLab base API endpoint. Providing a value is a requirement when working with GitLab CE or GitLab Enterprise e.g. https://my.gitlab.server/api/v4/. It is optional to provide this value and it can also be sourced from the GITLAB_BASE_URL environment variable. The value must end with a slash."
  type        = string
}
# List of projects paramaters
# Name of the group where you get projects
variable "current_group" {
  description = "Name of the Gitlab group you have access to"
  type        = string
}

variable "order_by" {
  description = "Return projects ordered by id, name, path, created_at, updated_at, or last_activity_at fields"
  default     = "name"
}

variable "include_subgroups" {
  description = "Include projects in subgroups of this group"
  default     = false
}

variable "per_page" {
  description = "The number of results to return per page"
  default     = 100
}

# Approve rule parameters
# Work for Gitlab Enterprise version only
variable "number_of_approvers" {
  description = "Number of approvers"
  default     = 2
}

variable "gitlab_users_list" {
  description = "List of users to approve"
  type        = list(string)
}

variable "approval_rule_name" {
  description = "Name of the rule to all projects at list of the projects for users at gitlab_users_list"
  default     = "Default rule"
}

variable "reset_approvals_on_push" {
  description = "Set to true if you want to remove all approvals in a merge request when new commits are pushed to its source branch."
  default     = true
}

variable "disable_overriding_approvers_per_merge_request" {
  description = "By default, users are able to edit the approval rules in merge requests. If set to true they would not be able to"
  default     = true
}

variable "merge_requests_author_approval" {
  description = "Set to true if you want to allow merge request authors to self-approve merge requests"
  default     = false
}

variable "merge_requests_disable_committers_approval" {
  description = "Set to true if you want to prevent approval of merge requests by merge request committers"
  default     = true
}