resource "aws_connect_routing_profile" "connect_routing_profile" {
  name                 = var.routing_profile_name
  default_outbound_queue_id = var.default_outbound_queue_id
  description          = var.routing_profile_description
  tags                 = var.routing_profile_tags

  queues = [
    {
      queue_id = var.voice_queue_id
      priority = 1
      delay    = 0
      channel  = "VOICE"
      concurrency = {
        max = var.voice_media_concurrency
      }
    },
    {
      queue_id = var.chat_queue_id
      priority = 2
      delay    = 0
      channel  = "CHAT"
      concurrency = {
        max = var.chat_media_concurrency
      }
    },
  ]
}