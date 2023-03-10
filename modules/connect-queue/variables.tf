variable "queue_name" {
  type        = string
  description = "The name of the Amazon Connect queue"
}

variable "queue_type" {
  type        = string
  description = "STANDARD"
}

variable "queue_description" {
  type        = string
  description = "The description of the Amazon Connect queue"
}

variable "queue_tags" {
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

variable "connect_instance_id" {
  type = string # Define the argument here
}
