variable "instance_alias" {
  type = string
}

variable "identity_management_type" {
  type = string
}

variable "inbound_calls_enabled" {
  type = bool
}

variable "outbound_calls_enabled" {
  type = bool
}

variable "inbound_call_whisper_message" {
  type = string
  default = "cccc"
}

variable "outbound_call_whisper_message" {
  type = string
}

variable "outbound_call_spam_threshold" {
  type = number
}

variable "tags" {
  type = map(string)
}
