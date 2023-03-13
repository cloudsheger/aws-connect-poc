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
  //storage_capacity = var.storage_capacity
  tags = var.instance_tags
}

############## connect quick module call ###########
module "connect_quick_connects" {
  source = "./modules/connect-quick-connects"

  description = var.quick_connect_description
  tags = var.user_tags
  name = var.quick_connect_name
  contact_flow_id = var.contact_flow_id
  phone_number = var.quick_connect_phone_number
  quick_connect_type = var.quick_connect_type
  quick_connect_config_description = var.quick_connect_config_description
  instance_id = module.connect_instance.connect_instance_id

  depends_on = [
    module.connect_instance
  ]

}

############## connect user & security profile #####
module "connect_user" {
  source = "./modules/connect-user"
  
  name = "test"
  //username             = var.username
  password             = var.password
  //identity_info        = var.identity_info
  //phone_config         = var.phone_config
  routing_profile_id   = module.connect_routing_profile.routing_profile_id
  security_profile_ids = [module.connect_security_profile.security_profile_id]
  tags            = var.user_tags
  instance_id  = module.connect_instance.connect_instance_id

  depends_on = [
    module.connect_routing_profile,module.connect_instance.connect_instance_id,module.connect_security_profile
  ]
}

module "connect_security_profile" {
  source = "./modules/security-profile"

  security_profile_name        = var.security_profile_name
  security_profile_description = var.security_profile_description
  tags                         = var.security_profile_tags
  //kms_key_id                   = var.kms_key_id
  instance_id = module.connect_instance.connect_instance_id

  depends_on = [module.connect_instance.connect_instance_id]


}

############## queue and routing modules ###########
module "connect_queue" {
  source = "./modules/connect-queue"
  name                      = var.queue_name
  queue_description         = var.queue_description
  queue_type                = var.queue_type
  tags                      = var.queue_tags
  outbound_caller_id_name           = var.outbound_caller_id_name # Pass the variable here
  outbound_caller_id_number         = var.outbound_caller_id_number # Pass the variable here
  hours_of_operation_id             = var.hours_of_operation_id
  instance_id                       = module.connect_instance.connect_instance_id
  connect_instance_id               = module.connect_instance.connect_instance_id

  depends_on = [module.connect_instance.connect_instance_id]

}

module "connect_routing_profile" {
  source = "./modules/connect-routing-profile"
  
  default_outbound_queue_id   = module.connect_queue.default_outbound_queue_id
  name                        = var.routing_profile_name
  description                 = var.routing_profile_description
  //default_outbound_queue_name = var.default_outbound_queue_name
  //chat_channel_concurrency    = var.chat_channel_concurrency
   channel                    = var.channel
   concurrency                = var.concurrency
  //chat_concurrency            = var.chat_concurrency
  //max_concurrency             = var.max_concurrency
  instance_id                 = module.connect_instance.connect_instance_id
  queue_id                    = module.connect_queue.default_outbound_queue_id
  tags                        = var.routing_profile_tags

  depends_on = [
    module.connect_instance,module.connect_queue.default_outbound_queue_id
  ]
}

##################

module "hierarchy_structure" {
  source = "./modules/hierarchy-structure"

  //hierarchy_structure_name = "example_hierarchy"
  instance_id                 = module.connect_instance.connect_instance_id
  level_one           = "Level One"
  level_two           = "Level Two"
  level_three         = "Level Three"
  level_four          = "Level Four"
  level_five          = "Level Five"

  depends_on = [module.connect_instance.connect_instance_id]
}
