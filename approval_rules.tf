# Creates approval rule to every project from the list
# and for the list of users
resource "gitlab_project_approval_rule" "global-rule" {
  count              = length(data.gitlab_projects.group_projects.projects)
  project            = data.gitlab_projects.group_projects.projects[count.index].id
  name               = var.approval_rule_name
  approvals_required = var.number_of_approvers
  user_ids           = [for user in data.gitlab_user.users : user.id]
}
resource "gitlab_project_level_mr_approvals" "gloval-mr-approvals" {
  count                                          = length(data.gitlab_projects.group_projects.projects)
  project_id                                     = data.gitlab_projects.group_projects.projects[count.index].id
  reset_approvals_on_push                        = var.reset_approvals_on_push
  disable_overriding_approvers_per_merge_request = var.disable_overriding_approvers_per_merge_request
  merge_requests_author_approval                 = var.merge_requests_author_approval
  merge_requests_disable_committers_approval     = var.merge_requests_disable_committers_approval
}