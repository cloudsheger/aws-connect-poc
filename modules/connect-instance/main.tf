resource "aws_connect_instance" "connect_instance" {
  instance_alias   = var.instance_alias
  identity_management_type = var.identity_management_type
  inbound_calls_enabled = var.inbound_calls_enabled
  outbound_calls_enabled = var.outbound_calls_enabled
  //inbound_call_whisper_message = var.inbound_call_whisper_message
  //outbound_call_whisper_message = var.outbound_call_whisper_message
  //outbound_call_spam_threshold = var.outbound_call_spam_threshold
  
  //tags = var.tags
}
