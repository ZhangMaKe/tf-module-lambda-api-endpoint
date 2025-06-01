output "lambda_function_arn" {
  value = aws_lambda_function.lambda_function.arn
  description = "The ARN of the Lambda function"
}

output "lambda_function_name" {
  value = aws_lambda_function.lambda_function.function_name
  description = "The name of the Lambda function"
}

output "lambda_function_invoke_arn" {
  value = aws_lambda_function.lambda_function.invoke_arn
  description = "The ARN to be used for invoking the Lambda function"
}

output "api_integration_id" {
  value = aws_api_gateway_integration.lambda_integration.id
}

output "api_route_id" {
  value = aws_api_gateway_route.lambda_route.id
  description = "The ID of the API route"
}




