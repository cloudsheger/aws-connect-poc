resource "aws_connect_quick_connect" "connect_quick_connect" {
  name              = var.name
  description       = var.description
  instance_id       = var.instance_id

  quick_connect_config {
    //phone_number = var.phone_number
  quick_connect_type = var.quick_connect_type
    //description = "A phone endpoint"
    phone_config {
      phone_number = "+12404929603"
    }
  }

tags                 = var.tags

}