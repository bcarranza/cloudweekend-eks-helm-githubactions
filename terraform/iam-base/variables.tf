# Variable for specifying the name for the various resources
variable "name" {
  description = "The name for the various resources"  # Description of the variable
  default     = "github_oidc"                         # Default value for the variable
}

# Variable for specifying the URL of the identity provider
variable "url" {
  default = "https://token.actions.githubusercontent.com"  # Default value for the variable
}

# Variable for specifying the list of client IDs for the identity provider
variable "client_id_list" {
  type    = list(string)                     # Type constraint for the variable (list of strings)
  default = ["sts.amazonaws.com"]            # Default value for the variable
}

# Variable for specifying the list of thumbprints of the provider's server certificates
variable "thumbprint_list" {
  type    = list(string)                     # Type constraint for the variable (list of strings)
  default = [                                # Default value for the variable
    "6938fd4d98bab03faadb97b34396831e3780aea1",
    "1c58a3a8518e8759bf075b76b750d4f2df264fcd"
  ]
}

# Variable for specifying the AWS policy in JSON format
variable "aws_policy_json" {
  description = "The AWS policy in a json format"  # Description of the variable
  default     = <<-EOT
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": "*",
        "Resource": "*"
      }
    ]
}
EOT
}

# Variable for specifying the conditions to validate
variable "validate_conditions" {
  description = "Conditions to validate"    # Description of the variable
  type        = set(string)                 # Type constraint for the variable (set of strings)
  default     = ["repo:bcarranza/cloudweekend-eks-helm-githubactions:ref:refs/heads/main"]  # Default value for the variable
}

# Variable for specifying tags to assign to resources
variable "tags" {
  type        = map(any)                    # Type constraint for the variable (map of any type)
  default     = {}                          # Default value for the variable
  description = "Tags"                       # Description of the variable
}

# Variable for controlling whether to create the identity provider or not
variable "create_identity_provider" {
  type        = bool                        # Type constraint for the variable (boolean)
  default     = true                        # Default value for the variable
  description = "This switch allows you to create or not create the identity provider. Only one can exist. If you are creating multiple Github OIDC Federations, only one of the instantiations should create this or the Terraform run will fail."  # Description of the variable
}
