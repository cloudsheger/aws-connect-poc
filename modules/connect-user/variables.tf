variable "name" {}
variable "instance_id" {}
//variable "username" {}

variable "password" {
  type        = string
  description = "The password of the Amazon Connect user"
}

/*variable "identity_info" {
  type        = list(object({
    first_name  = string
    last_name   = string
    email       = string
  }))
  description = "The identity information of the Amazon Connect user"
}*/

/*variable "phone_config" {
  type        = list(object({
    phone_type   = string
    auto_accept  = bool
  }))
  description = "The phone configuration of the Amazon Connect user"
}*/

variable "routing_profile_id" {
  type        = string
  description = "The ID of the routing profile for the Amazon Connect user"
}

variable "security_profile_ids" {
  type        = list(string)
  description = "The IDs of the security profiles for the Amazon Connect user"
}


/*variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect user"
  default     = {}
}*/
//variable "tags" {}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect queue"
  default     = {}
}
