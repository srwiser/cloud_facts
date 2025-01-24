output "lambda_function_name" {
value = aws_lambda_function.cloud_facts.id  # Ensure aws_lambda_function is declared
}

output "log_group_arn" {
  value = aws_cloudwatch_log_group.log_group.arn
}

output "api_endpoint" {
  value = aws_apigatewayv2_stage.default_stage.invoke_url
}