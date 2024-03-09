# Output block for exposing the ARN of the IAM role created by the iam_assumable_role_admin module
output "arn" {
  value = module.iam_assumable_role_admin.this_iam_role_arn  # Outputting the ARN of the IAM role
}
