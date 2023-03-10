variable "routing_profile_name" {
  type        = string
  description = "The name of the Amazon Connect routing profile"
}

variable "default_outbound_queue_id" {
  type        = string
  description = "The ID of the default outbound queue for the Amazon Connect routing profile"
}

variable "routing_profile_description" {
  type        = string
  description = "The description of the Amazon Connect routing profile"
}

variable "routing_profile_tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect routing profile"
  default     = {}
}

variable "voice_queue_id" {
  type        = string
  description = "The ID of the queue for voice contacts"
}

variable "voice_media_concurrency" {
  type        = number
  description = "The maximum number of concurrent contacts for voice channel"
}

variable "chat_queue_id" {
  type        = string
  description = "The ID of the queue for chat contacts"
}

variable "chat_media_concurrency" {
  type        = number
  description = "The maximum number of concurrent contacts for chat channel"
}
variable "connect_instance_id" {
  type = string # Define the argument here
}
