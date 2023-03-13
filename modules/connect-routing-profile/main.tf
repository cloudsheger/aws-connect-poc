resource "aws_connect_routing_profile" "connect_routing_profile" {
  default_outbound_queue_id   = var.default_outbound_queue_id
  name                        = var.name
  description                 = var.description
  //default_outbound_queue_name = var.default_outbound_queue_name
  //chat_channel_concurrency    = var.chat_channel_concurrency
  //chat_channel                = var.chat_channel
  instance_id                 = var.instance_id

  # Add a media_concurrencies block for voice interactions
  media_concurrencies {
    //media_type = "VOICE"
    channel = var.channel
    concurrency = var.concurrency
  }

  queue_configs {
    channel  = "VOICE"
    delay    = 2
    priority = 1
    queue_id = var.queue_id
  }

tags            = var.tags
}