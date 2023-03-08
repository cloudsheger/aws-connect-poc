resource "aws_connect_quick_connect" "quick_connect" {
  name   = var.name
  description = var.description
  instance_id           = "my-connect-instance-id"
  quick_connect_config {
   // phone_number = var.phone_number
   //queue_id = var.queue_id
    quick_connect_type = var.quick_connect_type
  }
  
  tags = var.tags
}
