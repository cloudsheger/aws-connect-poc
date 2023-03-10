resource "aws_connect_security_profile" "connect_security_profile" {
  name             = var.security_profile_name
  description      = var.security_profile_description
  security_profile_tags = var.security_profile_tags
  kms_key_id       = var.kms_key_id
}

