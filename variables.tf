variable "lambda_output_path" {
  description = "The path where the Lambda function zip file will be saved."
  type        = string
}

variable "lambda_exec_role_arn" {
  description = "The ARN of the IAM role that the Lambda function will assume."
  type        = string
}

variable "source_file_location" {
  description = "The path to the source file for the Lambda function."
  type        = string
}

variable "function_name" {
  description = "The name of the Lambda function."
  type        = string
}

variable "enable_tracing" {
  description = "Whether to enable X-Ray tracing for the Lambda function."
  type        = bool
  default     = false
}

variable "environment_variables" {
  description = "A map of environment variables to set for the Lambda function."
  type        = map(string)
  default     = {}
}

variable "api_id" {
    description = "The ID of the API Gateway API to integrate the Lambda Function with."
    type        = string
}

variable "api_execution_arn" {
    description = "The execution ARN of the API Gateway API."
    type        = string
}

variable "http_route_key" {
    description = "The HTTP method and path for the API Gateway route, e.g., 'GET /leaderboard'."
    type        = string
    validation {
    condition     = contains(["GET", "PUT", "POST", "DELETE"], var.http_route_key)
    error_message = "Environment must be one of: GET, PUT, POST, DELETE."
  }
}

variable "route_key" {
  description = "The route key for the API Gateway route."
  type        = string
}