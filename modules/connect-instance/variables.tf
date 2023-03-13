variable "instance_alias" {
  type = string
}

variable "inbound_calls_enabled" {
  type = bool
}

variable "outbound_calls_enabled" {
  type = bool
}

//variable "logging_enabled" {
 // type = bool
//}
variable "identity_management_type" {
  type = string
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect instance"
  default     = {}
}