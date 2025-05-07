resource "random_id" "suffix" {
  byte_length = 4

}

resource "aws_security_group" "this" {
  count = var.create ? 1 : 0

  name                   = "${var.name}-${random_id.suffix.id}"
  description            = var.description
  vpc_id                 = var.vpc_id
  revoke_rules_on_delete = var.revoke_rules_on_delete
  tags                   = var.tags
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_vpc_security_group_ingress_rule" "this" {
  count = var.create ? length(var.ingress_cidr_ipv4_rules) : 0

  security_group_id = aws_security_group.this[0].id
  cidr_ipv4         = try(var.ingress_cidr_ipv4_rules[count.index]["cidr_ipv4"], null)
  from_port         = try(var.ingress_cidr_ipv4_rules[count.index]["from_port"], null)
  to_port           = try(var.ingress_cidr_ipv4_rules[count.index]["to_port"], null)
  ip_protocol       = try(var.ingress_cidr_ipv4_rules[count.index]["protocol"], null)

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_vpc_security_group_egress_rule" "this" {
  count = var.create ? length(var.egress_cidr_ipv4_rules) : 0

  security_group_id = aws_security_group.this[0].id
  cidr_ipv4         = try(var.egress_cidr_ipv4_rules[count.index]["cidr_ipv4"], null)
  from_port         = try(var.egress_cidr_ipv4_rules[count.index]["from_port"], null)
  to_port           = try(var.egress_cidr_ipv4_rules[count.index]["to_port"], null)
  ip_protocol       = try(var.egress_cidr_ipv4_rules[count.index]["protocol"], null)

  lifecycle {
    create_before_destroy = true
  }
}