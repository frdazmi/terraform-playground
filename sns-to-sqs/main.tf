resource "aws_sns_topic" "order_updates" {
  name = local.sns_topic_name
}

module "order_notification_sqs" {
  source = "../sqs-modules"
  name   = local.sqs_queue_name
}

resource "aws_sns_topic_subscription" "order_sns_to_sqs" {
  topic_arn = aws_sns_topic.order_updates.arn
  protocol  = "sqs"
  endpoint  = module.order_notification_sqs.queue_arn
}

resource "aws_sqs_queue_policy" "order_notification_policy" {
  queue_url = module.order_notification_sqs.queue_url

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "sns.amazonaws.com"
        }
        Action   = "sqs:SendMessage"
        Resource = module.order_notification_sqs.queue_arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = aws_sns_topic.order_updates.arn
          }
        }
      }
    ]
  })
}