variable "security_profile_name" {
  type        = string
  description = "The name of the Amazon Connect security profile"
}

variable "security_profile_description" {
  type        = string
  description = "The description of the Amazon Connect security profile"
}

//variable "tags" {}
variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect queue"
  default     = {}
}

variable "instance_id" {
  type = string # Define the argument here
}
