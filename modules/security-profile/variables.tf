variable "security_profile_name" {
  type        = string
  description = "The name of the Amazon Connect security profile"
}

variable "security_profile_description" {
  type        = string
  description = "The description of the Amazon Connect security profile"
}

variable "security_profile_tags" {
  type        = map(string)
  description = "A map of tags to apply to the Amazon Connect security profile"
  default     = {}
}

variable "kms_key_id" {
  type        = string
  description = "The ID of the AWS KMS key used for encryption of Amazon Connect data in this security profile"
}

variable "connect_instance_id" {
  type = string # Define the argument here
}
