resource "aws_connect_user" "connect_user" {
  name              = var.name
  instance_id       = var.instance_id
  //username          = var.username
  password          = var.password
  //identity_info     = var.identity_info
  //phone_config      = var.phone_config
  routing_profile_id = var.routing_profile_id
  security_profile_ids = var.security_profile_ids
  tags              = var.tags

  identity_info {
    email = "jemalmfth@gmail.com.com"
  }
  phone_config {
    phone_type = "SOFT_PHONE"
    auto_accept = true
    after_contact_work_time_limit = 60
    desk_phone_number = "+12404929603"
  }
}

