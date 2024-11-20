output "queue_url" {
  description = "The URL of the created SQS queue"
  value       = aws_sqs_queue.this.id
}

output "queue_arn" {
  description = "The ARN of the created SQS queue"
  value       = aws_sqs_queue.this.arn
}

output "queue_name" {
  description = "The name of the created SQS queue"
  value       = aws_sqs_queue.this.name
}