resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "aws_sqs_queue" "this" {
  name                       = "${var.name}-${random_id.random_suffix.hex}"
  visibility_timeout_seconds = var.visibility_timeout_seconds
  message_retention_seconds  = var.message_retention_seconds
  delay_seconds              = var.delay_seconds

  tags = var.tags
}