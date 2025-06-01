# Lambda API Endpoint Terraform Module

This Terraform module creates an AWS Lambda function and integrates it with an API Gateway HTTP API endpoint. It provides a complete solution for deploying serverless API endpoints using AWS Lambda and API Gateway.

## Features

- Creates a Lambda function with configurable settings
- Integrates the Lambda function with API Gateway HTTP API
- Sets up necessary IAM permissions for API Gateway to invoke Lambda
- Configurable HTTP methods (GET, PUT, POST, DELETE)
- Support for environment variables
- Optional X-Ray tracing

## Usage

```hcl
module "lambda_api_endpoint" {
  source = "git::https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint.git"

  # Lambda Function Configuration
  lambda_output_path    = "./lambda_function.zip"
  lambda_exec_role_arn  = "arn:aws:iam::123456789012:role/lambda-execution-role"
  source_file_location  = "./src/lambda_function.py"
  function_name         = "my-api-function"
  enable_tracing        = true
  environment_variables = {
    ENV_VAR_1 = "value1"
    ENV_VAR_2 = "value2"
  }

  # API Gateway Configuration
  api_id           = "abc123def"
  api_execution_arn = "arn:aws:execute-api:region:account-id:api-id"
  http_route_key   = "GET"
  route_key        = "my-endpoint"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| lambda_output_path | The path where the Lambda function zip file will be saved | `string` | n/a | yes |
| lambda_exec_role_arn | The ARN of the IAM role that the created Lambda function will assume | `string` | n/a | yes |
| source_file_location | The path to the source file for the Lambda function | `string` | n/a | yes |
| function_name | The name of the Lambda function | `string` | n/a | yes |
| enable_tracing | Whether to enable X-Ray tracing for the Lambda function | `bool` | `false` | no |
| environment_variables | A map of environment variables to set for the Lambda function | `map(string)` | `{}` | no |
| api_id | The ID of the API Gateway API to integrate the Lambda Function with | `string` | n/a | yes |
| api_execution_arn | The execution ARN of the API Gateway API | `string` | n/a | yes |
| http_route_key | The HTTP method for the API Gateway route (GET, PUT, POST, DELETE) | `string` | n/a | yes |
| route_key | The route key for the API Gateway route | `string` | n/a | yes |

## Outputs

The module outputs the following attributes:

- `lambda_function_arn`: The ARN of the created Lambda function
- `lambda_function_name`: The name of the Lambda function
- `lambda_function_invoke_arn`: The ARN to be used for invoking the Lambda function
- `api_integration_id`: The ID of the API Gateway integration
- `api_route_id`: The ID of the API Gateway route

## Requirements

- Terraform >= 0.13
- AWS Provider
- An existing API Gateway HTTP API

## License

This module is released under the MIT License.
