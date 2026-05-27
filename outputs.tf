output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "oidc_provider_arn" {
  description = "ARN of the OIDC provider"
  value       = try(aws_iam_openid_connect_provider.this[0].arn, null)
}

output "oidc_provider_url" {
  description = "URL of the OIDC provider"
  value       = try(aws_iam_openid_connect_provider.this[0].url, null)
}
