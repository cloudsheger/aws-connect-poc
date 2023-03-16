resource "aws_connect_queue" "connect_queue" {
  instance_id            = var.instance_id
  name                   = var.name
  description            = var.queue_description
  hours_of_operation_id  = var.hours_of_operation_id

  tags                   = var.tags
}