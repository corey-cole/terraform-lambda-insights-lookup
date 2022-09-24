output "layer_arn" {
  value       = local.insights_layer_arns[var.region][var.architecture]
  description = "Lambda Insights layer ARN for the given region and architecture"
}

output "policy_arn" {
  value       = "arn:aws:iam::aws:policy/CloudWatchLambdaInsightsExecutionRolePolicy"
  description = "Managed IAM policy ARN to enable Lambda Insights telemetry"
}