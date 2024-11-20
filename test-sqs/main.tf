module "sqs_module_test" {
  source = "../sqs-modules"
  name   = "sqs_module_test"

  tags = {
    environment = local.environment
    project     = local.project_name
  }
}