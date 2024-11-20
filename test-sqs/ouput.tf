output "new_test_queue_url" {
  description = "The URL of the SQS queue"
  value       = module.sqs_module_test.queue_url
}

output "new_test_queue_arn" {
  description = "The ARN of the SQS queue"
  value       = module.sqs_module_test.queue_arn
}

output "new_test_queue_name" {
  description = "The name of the SQS queue"
  value       = module.sqs_module_test.queue_name
}