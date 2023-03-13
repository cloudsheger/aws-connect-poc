variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "contact_flow_id" {
  type = string
}

variable "quick_connect_config_description" {
  type = string
}
variable "phone_number" {
  type = number
}

variable "instance_id" {}
variable "quick_connect_type" {}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect queue"
  default     = {}
}