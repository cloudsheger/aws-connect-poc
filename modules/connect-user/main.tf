resource "aws_connect_user" "connect_user" {
  username          = var.username
  password          = var.password
  identity_info     = var.identity_info
  phone_config      = var.phone_config
  routing_profile_id = var.routing_profile_id
  security_profile_ids = var.security_profile_ids
  tags              = var.user_tags
}

output "user_id" {
  value = aws_connect_user.connect_user.id
}

