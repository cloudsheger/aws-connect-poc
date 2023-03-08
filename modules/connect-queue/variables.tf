variable "name" {
  type    = string
  default = "my_queue"
}

variable "description" {
  type    = string
  default = "My queue description"
}

variable "outbound_caller_id_name" {
  type    = string
  default = "My Outbound Caller ID Name"
}

variable "outbound_caller_id_number" {
  type    = string
  default = "+11234567890"
}
