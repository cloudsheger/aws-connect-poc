provider "aws" {
  region = "us-east-1"
}

module "connect_instance" {
  source = "./modules/connect-instance"

  instance_alias   = "connect-instance-poc"
  identity_management_type = "CONNECT_MANAGED"
  inbound_calls_enabled = true
  outbound_calls_enabled = true
  inbound_call_whisper_message = "Please wait while we connect you to an agent"
  outbound_call_whisper_message = "You are about to connect to a customer"
  outbound_call_spam_threshold = 50

  tags = {
    Environment = "dev"
  }
}

module "connect_quick_connect" {
  source = "./modules/connect-quick-connect"

  name = "my-quick-connect"
  description = "A description of my quick connect"
  instance_id = module.connect_instance.instance_id
  phone_number = "+12404929603"
  queue_id = module.connect_queue.queue_id
  quick_connect_type = "PHONE_NUMBER"

  tags = {
    Environment = "dev"
  }
}

module "connect_queue" {
  source                    = "./modules/connect-queue"
  name                      = "my_queue"
  description               = "My queue description"
  outbound_caller_id_name   = "My Outbound Caller ID Name"
  outbound_caller_id_number = "+12404929603"
}
