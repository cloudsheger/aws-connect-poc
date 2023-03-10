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

variable "storage_capacity" {
  type = number
}

variable "instance_tags" {
  type = map(string)
}
variable "identity_management_type" {
  type = string
}