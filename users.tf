# Gitlab users objects
data "gitlab_user" "users" {
  for_each = toset(var.gitlab_users_list)
  username = each.value
}
