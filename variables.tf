variable "lambda_output_path" {
  description = "The path where the Lambda function zip file will be saved."
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

variable "role_name" {
  description = "The name of the IAM role for the Lambda function."
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

variable "authoriser_id" {
  description = "The ID of the Lambda authorizer to use for the API Gateway route."
  type        = string
  default     = null
}

variable "authorisation_type" {
  description = "The type of authorization for the API Gateway route."
  type        = string
  default     = "NONE"
  validation {
    condition     = contains(["NONE", "AWS_IAM", "CUSTOM", "JWT"], var.authorisation_type)
    error_message = "Authorization type must be one of: NONE, AWS_IAM, JWT, or CUSTOM."
  }
}

variable "include_lambda_log_group" {
  type = bool
  default = true
  description = "whether or not to create the cloudwatch logs group for the lambda function"
}

variable "role_policies" {
  type = list(object({
    name = string
    actions = list(string)
    resources = list(string)
  }))
  description = "A list of iam policy objects containing name, actions, and resources, specifying the permissions to be given to the role."
}

variable "precreated_policy_arns" {
  description = "A map of existing IAM policy ARNs and identifiers to attach to the role."
  type = map(string)
  default = {}
}