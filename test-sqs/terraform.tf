terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "terraform/state/sqs.tfstate"
    region = "us-east-1"
    // The endpoint is specific to LocalStack
    endpoints = {
      s3 = "http://s3.localhost.localstack.cloud:4566"
    }
  }
}