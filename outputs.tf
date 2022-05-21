output "project_list" {
  value = data.gitlab_projects.group_projects.projects.*.name
}

output "project_list_length" {
  value = length(data.gitlab_projects.group_projects.projects)
}