output "lambda_function_arn" {
  value = module.lambda_function_with_iam_role_and_policies.function_arn
  description = "The ARN of the Lambda function"
}

output "lambda_function_name" {
  value = var.function_name
  description = "The name of the Lambda function"
}

output "lambda_function_invoke_arn" {
  value = module.lambda_function_with_iam_role_and_policies.invoke_arn
  description = "The ARN to be used for invoking the Lambda function"
}

output "api_integration_id" {
  value = aws_apigatewayv2_integration.apigw_integration.id
}

output "api_route_id" {
  value = aws_apigatewayv2_route.apigw_route.id
  description = "The ID of the API route"
}

output "role_arn" {
  description = "The arn of the created IAM role."
  value = module.lambda_function_with_iam_role_and_policies.role_arn
}

output "policy_arns" {
  description = "A list of the ARNs of the created IAM policies."
  value = module.lambda_function_with_iam_role_and_policies.policy_arns
}

output "policy_ids" {
  description = "A list of the IDs of the created IAM policies."
  value = module.lambda_function_with_iam_role_and_policies.policy_ids
}




