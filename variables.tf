variable "instance_alias" {
  description = "The alias for the Amazon Connect instance"
  type        = string
}
variable "outbound_calls_enabled" {}
#variable "logging_enabled" {}
variable "storage_capacity" {}
variable "instance_tags" {}
variable "quick_connect_name" {}
variable "quick_connect_description" {}

variable "contact_flow_id" {}
variable "phone_number" {}
//variable "username" {}
variable "password" {}
//variable "identity_info" {}
//variable "phone_config" {}

variable "channel" {}
variable "chat_concurrency" {}


variable "inbound_calls_enabled" {}
variable "quick_connect_config_description" {}
//variable "user_tags" {}
variable "security_profile_name" {}
variable "security_profile_description" {}
variable "security_profile_tags" {}
//variable "kms_key_id" {}
variable "queue_name" {}
variable "queue_description" {}
variable "queue_type" {}
variable "queue_tags" {}
variable "outbound_caller_id_name" {}
variable "outbound_caller_id_number" {}

variable "hours_of_operation_id" {}

//variable "voice_media_concurrency" {}
//variable "chat_media_concurrency" {}
variable "identity_management_type" {}
variable "quick_connect_type" {}
//variable "hours_of_operation_id" {}
//variable "tags" {}
variable "quick_connect_phone_number" {}
variable "concurrency" {}

# Routing profile

variable "routing_profile_name" {}
variable "routing_profile_description" {}
//variable "chat_channel" {}
variable "routing_profile_tags"{}
//variable "instance_id" {}

# connect quick connects
variable "user_tags" {}