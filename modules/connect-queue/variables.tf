variable "name" {
  type        = string
  description = "The name of the Amazon Connect queue"
}

variable "queue_description" {
  type        = string
  description = "The description of the Amazon Connect queue"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect queue"
  default     = {}
}

variable "outbound_caller_id_name" {
  type        = string
  description = "The name to use as the outbound caller ID for the Amazon Connect queue"
}

variable "outbound_caller_id_number" {
  type        = string
  description = "The phone number to use as the outbound caller ID for the Amazon Connect queue"
}

variable "queue_type" {
  type        = string
  description = "The name to use as the outbound caller ID for the Amazon Connect queue"
}

variable "instance_id" {
  type = string
}

variable "connect_instance_id" {}
//variable "hours_of_operation_id" {}

variable "hours_of_operation_id" {
  description = "The ID of the hours of operation to use for the queue"
  default     = "DEFAULT"
}
