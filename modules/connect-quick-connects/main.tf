resource "aws_connect_quick_connect" "connect_quick_connect" {
  name = var.quick_connect_name
  description = var.quick_connect_description
  quick_connect_config {
    contact_flow_id = var.contact_flow_id
    phone_number = var.phone_number
    description = var.quick_connect_config_description
  }
}