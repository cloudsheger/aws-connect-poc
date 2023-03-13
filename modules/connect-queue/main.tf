resource "aws_connect_queue" "connect_queue" {
  name                   = var.name
  description            = var.queue_description
  tags                   = var.tags
  hours_of_operation_id  = var.hours_of_operation_id
  instance_id            = var.instance_id
}
