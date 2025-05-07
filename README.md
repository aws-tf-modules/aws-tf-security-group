## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_vpc_security_group_egress_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_egress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule) | resource |
| [random_id.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Create the security group and all rules ? | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for secruity group | `string` | `null` | no |
| <a name="input_egress_cidr_ipv4_rules"></a> [egress\_cidr\_ipv4\_rules](#input\_egress\_cidr\_ipv4\_rules) | Egress rules for security group | `list(map(string))` | `[]` | no |
| <a name="input_ingress_cidr_ipv4_rules"></a> [ingress\_cidr\_ipv4\_rules](#input\_ingress\_cidr\_ipv4\_rules) | Ingress rules for security group | `list(map(string))` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | A name for security group | `string` | `null` | no |
| <a name="input_revoke_rules_on_delete"></a> [revoke\_rules\_on\_delete](#input\_revoke\_rules\_on\_delete) | Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. Enable for EMR. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for security group | `map(string)` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID. Defaults to the region's default VPC. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
