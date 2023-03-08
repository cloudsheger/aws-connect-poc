resource "aws_connect_queue" "connect_queue" {
  name                  = var.name
  description           = var.description
  instance_id           = "my-connect-instance-id"
  hours_of_operation_id = "your_hours_of_operation_id_here"
  outbound_caller_config {
    outbound_caller_id_name   = var.outbound_caller_id_name
   // outbound_caller_id_number = var.outbound_caller_id_number
  }
}
