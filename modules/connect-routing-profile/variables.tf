variable "name" {
  type        = string
  description = "The name of the Amazon Connect routing profile"
}

variable "description" {
  type        = string
  description = "The description of the Amazon Connect routing profile"
}
/*variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect routing profile"
  default     = {}
}*/
//variable "tags" {}
variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect queue"
  default     = {}
}
variable "instance_id" {
  type        = string
  description = "The ID of the default outbound queue for the Amazon Connect routing profile"
}

variable "default_outbound_queue_id"{}
variable "concurrency" {}

variable "channel" {
  description = "The maximum number of chat interactions an agent can handle at the same time."
  type        = string
}

variable "queue_id" {}