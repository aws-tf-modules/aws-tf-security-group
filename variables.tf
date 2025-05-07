variable "create" {
  description = "Create the security group and all rules ?"
  type        = bool
  default     = true
}

variable "name" {
  description = "A name for security group"
  type        = string
  default     = null
}

variable "description" {
  description = "A description for secruity group"
  type        = string
  default     = null
}

variable "ingress_cidr_ipv4_rules" {
  description = "Ingress rules for security group"
  type = list(map(string))
  default = []
}

variable "egress_cidr_ipv4_rules" {
  description = "Egress rules for security group"
  type = list(map(string))
  default = []
}

variable "revoke_rules_on_delete" {
  description = "Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. Enable for EMR."
  type        = bool
  default     = false
}

variable "vpc_id" {
  description = " VPC ID. Defaults to the region's default VPC."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for security group"
  type        = map(string)
  default     = null
}