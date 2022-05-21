# List projects within a group tree
data "gitlab_group" "cur_group" {
  full_path = var.current_group
}

data "gitlab_projects" "group_projects" {
  group_id          = data.gitlab_group.cur_group.id
  order_by          = var.order_by
  include_subgroups = var.include_subgroups
  with_shared       = false
  per_page          = var.per_page
  archived          = false
}