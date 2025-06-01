output "lambda_function_arn" {
  value = module.lambda_function.function_arn
  description = "The ARN of the Lambda function"
}

output "lambda_function_name" {
  value = var.function_name
  description = "The name of the Lambda function"
}

output "lambda_function_invoke_arn" {
  value = module.lambda_function.invoke_arn
  description = "The ARN to be used for invoking the Lambda function"
}

output "api_integration_id" {
  value = aws_apigatewayv2_integration.apigw_integration.id
}

output "api_route_id" {
  value = aws_apigatewayv2_route.apigw_route.id
  description = "The ID of the API route"
}




