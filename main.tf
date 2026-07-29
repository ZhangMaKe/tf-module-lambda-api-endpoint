module "lambda_function_with_iam_role_and_policies" {
  source = "git::https://github.com/ZhangMaKe/tf-module-lambda-function-with-iam-role-and-policies.git?ref=v1.3.0"

  role_name = var.role_name
  role_policies = var.role_policies

  precreated_policy_arns = var.precreated_policy_arns

  source_file = var.source_file_location
  output_path = var.lambda_output_path
  function_name = "${var.project_name}-${var.function_name}"

  environment_variables = var.environment_variables

  use_sqs_dlq = false
}

resource "aws_apigatewayv2_integration" "apigw_integration" {
  api_id                 = var.api_id
  integration_type       = "AWS_PROXY"
  integration_uri        = module.lambda_function_with_iam_role_and_policies.invoke_arn
  payload_format_version = "2.0"
}

resource "aws_apigatewayv2_route" "apigw_route" {
  api_id    = var.api_id
  route_key = "${var.http_route_key} /${var.route_key}"
  target    = "integrations/${aws_apigatewayv2_integration.apigw_integration.id}"
  authorizer_id = var.authoriser_id
  authorization_type = var.authorisation_type
}

resource "aws_lambda_permission" "aws_lambda_permission" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.api_execution_arn}/*/*"
}