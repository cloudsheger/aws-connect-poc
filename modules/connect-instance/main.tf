resource "aws_connect_instance" "connect_instance" {
  instance_alias = var.instance_alias
  inbound_calls_enabled = var.inbound_calls_enabled
  outbound_calls_enabled = var.outbound_calls_enabled
  //logging_enabled = var.logging_enabled
  storage_capacity = var.storage_capacity
  identity_management_type = var.identity_management_type

  tags = var.instance_tags
}
