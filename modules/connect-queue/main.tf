resource "aws_connect_queue" "connect_queue" {
  name                 = var.queue_name
  description          = var.queue_description
  tags                 = var.queue_tags
  queue_type           = var.queue_type
  outbound_caller_config {
    outbound_caller_id_name = var.outbound_caller_id_name
    outbound_caller_id_number = var.outbound_caller_id_number
  }
}

output "queue_id" {
  value = aws_connect_queue.connect_queue.id
}
