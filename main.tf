module "lambda_function" {
  source = "git::https://github.com/ZhangMaKe/tf-module-lambda-function.git?ref=v1.0.1"
    output_path = var.lambda_output_path
    role_arn    = var.lambda_exec_role_arn
    source_file = var.source_file_location
    function_name = var.function_name
    enable_tracing = var.enable_tracing
    environment_variables = var.environment_variables
}

resource "aws_apigatewayv2_integration" "apigw_integration" {
  api_id                 = var.api_id
  integration_type       = "AWS_PROXY"
  integration_uri        = module.lambda_function.invoke_arn
  payload_format_version = "2.0"
}

resource "aws_apigatewayv2_route" "apigw_route" {
  api_id    = var.api_id
  route_key = "${var.http_route_key} /${var.route_key}"
  target    = "integrations/${aws_apigatewayv2_integration.apigw_integration.id}"
  authorizer_id = var.authoriser_id
  authorization_type = var.authoriser_id ? "CUSTOM" : "NONE"
}

resource "aws_lambda_permission" "aws_lambda_permission" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.api_execution_arn}/*/*"
}