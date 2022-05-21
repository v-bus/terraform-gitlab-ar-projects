# Terraform project to create Approval Rule in Gitlab Projects

## terraform.tfvars example

```tf
gitlab_base_url = "https://gitlab.ru/api/v4/"
gitlab_token    = "yR8zN345NVD9xrj5JZ-f"
gitlab_users_list = [
  "v-bus",
  "gts",
  "ies",
  "siv"
]
current_group = "unicorns"
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project_approval_rule.global-rule](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/resources/project_approval_rule) | resource |
| [gitlab_project_level_mr_approvals.gloval-mr-approvals](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/resources/project_level_mr_approvals) | resource |
| [gitlab_group.cur_group](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/data-sources/group) | data source |
| [gitlab_projects.group_projects](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/data-sources/projects) | data source |
| [gitlab_user.users](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_approval_rule_name"></a> [approval\_rule\_name](#input\_approval\_rule\_name) | Name of the rule to all projects at list of the projects for users at gitlab\_users\_list | `string` | `"Default rule"` | no |
| <a name="input_current_group"></a> [current\_group](#input\_current\_group) | Name of the Gitlab group you have access to | `string` | n/a | yes |
| <a name="input_disable_overriding_approvers_per_merge_request"></a> [disable\_overriding\_approvers\_per\_merge\_request](#input\_disable\_overriding\_approvers\_per\_merge\_request) | By default, users are able to edit the approval rules in merge requests. If set to true they would not be able to | `bool` | `true` | no |
| <a name="input_gitlab_base_url"></a> [gitlab\_base\_url](#input\_gitlab\_base\_url) | This is the target GitLab base API endpoint. Providing a value is a requirement when working with GitLab CE or GitLab Enterprise e.g. https://my.gitlab.server/api/v4/. It is optional to provide this value and it can also be sourced from the GITLAB\_BASE\_URL environment variable. The value must end with a slash. | `string` | n/a | yes |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | Gitlab Token | `string` | n/a | yes |
| <a name="input_gitlab_users_list"></a> [gitlab\_users\_list](#input\_gitlab\_users\_list) | List of users to approve | `list(string)` | n/a | yes |
| <a name="input_include_subgroups"></a> [include\_subgroups](#input\_include\_subgroups) | Include projects in subgroups of this group | `bool` | `false` | no |
| <a name="input_merge_requests_author_approval"></a> [merge\_requests\_author\_approval](#input\_merge\_requests\_author\_approval) | Set to true if you want to allow merge request authors to self-approve merge requests | `bool` | `false` | no |
| <a name="input_merge_requests_disable_committers_approval"></a> [merge\_requests\_disable\_committers\_approval](#input\_merge\_requests\_disable\_committers\_approval) | Set to true if you want to prevent approval of merge requests by merge request committers | `bool` | `true` | no |
| <a name="input_number_of_approvers"></a> [number\_of\_approvers](#input\_number\_of\_approvers) | Number of approvers | `number` | `2` | no |
| <a name="input_order_by"></a> [order\_by](#input\_order\_by) | Return projects ordered by id, name, path, created\_at, updated\_at, or last\_activity\_at fields | `string` | `"name"` | no |
| <a name="input_per_page"></a> [per\_page](#input\_per\_page) | The number of results to return per page | `number` | `100` | no |
| <a name="input_reset_approvals_on_push"></a> [reset\_approvals\_on\_push](#input\_reset\_approvals\_on\_push) | Set to true if you want to remove all approvals in a merge request when new commits are pushed to its source branch. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_list"></a> [project\_list](#output\_project\_list) | n/a |
| <a name="output_project_list_length"></a> [project\_list\_length](#output\_project\_list\_length) | n/a |
<!-- END_TF_DOCS -->