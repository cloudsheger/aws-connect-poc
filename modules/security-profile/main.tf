resource "aws_connect_security_profile" "connect_security_profile" {
  name             = var.security_profile_name
  description      = var.security_profile_description
  tags             = var.tags
  instance_id = var.instance_id
  //kms_key_id       = var.kms_key_id
}

