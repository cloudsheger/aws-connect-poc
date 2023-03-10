provider "aws" {
  region = "us-east-1"
}

############## aws connect instance      ###########
module "connect_instance" {
  source = "./modules/connect-instance"
  instance_alias = var.instance_alias
  inbound_calls_enabled = var.inbound_calls_enabled
  outbound_calls_enabled = var.outbound_calls_enabled
  identity_management_type = var.identity_management_type
  #logging_enabled = var.logging_enabled
  storage_capacity = var.storage_capacity
  instance_tags = var.instance_tags
}

############## connect quick module call ###########
module "connect_quick_connects" {
  source = "./modules/connect-quick-connects"
  quick_connect_name = var.quick_connect_name
  quick_connect_description = var.quick_connect_description
  contact_flow_id = var.contact_flow_id
  phone_number = var.phone_number
  quick_connect_config_description = var.quick_connect_config_description
  connect_instance_id = module.connect_instance.connect_instance_id

}

############## connect user & security profile #####
module "connect_user" {
  source = "./modules/connect-user"

  username             = var.username
  password             = var.password
  identity_info        = var.identity_info
  phone_config         = var.phone_config
  routing_profile_id   = module.connect_routing_profile.routing_profile_id
  security_profile_ids = [module.connect_security_profile.security_profile_id]
  user_tags            = var.user_tags
  connect_instance_id  = module.connect_instance.connect_instance_id
}

module "connect_security_profile" {
  source = "./modules/security-profile"

  security_profile_name        = var.security_profile_name
  security_profile_description = var.security_profile_description
  security_profile_tags        = var.security_profile_tags
  kms_key_id                   = var.kms_key_id
  connect_instance_id = module.connect_instance.connect_instance_id

}

############## queue and routing modules ###########

module "connect_queue" {
  source = "./modules/connect-queue"

  queue_name                = var.queue_name
  queue_description         = var.queue_description
  queue_type                = var.queue_type
  queue_tags                = var.queue_tags
  //outbound_caller_arn = var.outbound_caller_arn
  connect_instance_id               = module.connect_instance.connect_instance_id
  outbound_caller_id_name   = var.outbound_caller_id_name # Pass the variable here
  outbound_caller_id_number = var.outbound_caller_id_number # Pass the variable here
}

module "connect_routing_profile" {
  source = "./modules/connect-routing-profile"

  routing_profile_name        = var.routing_profile_name
  default_outbound_queue_id   = module.connect_queue.queue_id
  routing_profile_description = var.routing_profile_description
  routing_profile_tags        = var.routing_profile_tags
  voice_queue_id              = module.connect_queue.queue_id
  voice_media_concurrency     = var.voice_media_concurrency
  chat_queue_id               = module.connect_queue.queue_id
  chat_media_concurrency      = var.chat_media_concurrency
  connect_instance_id         = module.connect_instance.connect_instance_id
}
