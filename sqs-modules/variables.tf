variable "name" {
  description = "The name of the SQS queue"
  type        = string
}

variable "visibility_timeout_seconds" {
  description = "Visibility timeout for the queue"
  type        = number
  default     = 30
}

variable "message_retention_seconds" {
  description = "Message retention period for the queue"
  type        = number
  default     = 86400
}

variable "delay_seconds" {
  description = "Delay in seconds for the queue"
  type        = number
  default     = 0
}

variable "tags" {
  description = "Tags to apply to the SQS queue"
  type        = map(string)
  default     = {}
}