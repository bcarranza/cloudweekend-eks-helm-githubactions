# Resource block for creating an AWS IAM OpenID Connect provider
resource "aws_iam_openid_connect_provider" "this" {
  count           = var.create_identity_provider ? 1 : 0  # Conditionally create the OpenID Connect provider based on input variable
  url             = var.url                                # URL of the identity provider
  client_id_list  = var.client_id_list                     # List of client IDs for the provider
  thumbprint_list = var.thumbprint_list                    # List of thumbprints of the provider's server certificates
  tags            = var.tags                               # Tags to assign to the OpenID Connect provider
}

# Module block for creating an IAM role with OIDC federated access
module "iam_assumable_role_admin" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version                       = "3.6.0"
  create_role                   = true                               # Create IAM role
  role_name                     = var.name                           # Name of the IAM role
  provider_url                  = var.url                            # URL of the identity provider
  role_policy_arns              = [aws_iam_policy.iam_policy.arn]    # List of ARNs for IAM policies to attach to the role
  oidc_fully_qualified_subjects = var.validate_conditions            # List of fully qualified subject conditions
  tags                          = var.tags                           # Tags to assign to the IAM role
}

# Resource block for creating an AWS IAM policy
resource "aws_iam_policy" "iam_policy" {
  name_prefix = var.name                                 # Prefix for the IAM policy name
  description = "IAM Policy for the Github OIDC Federation permissions"  # Description for the IAM policy
  policy      = var.aws_policy_json                     # JSON policy document defining the permissions
  tags        = var.tags                                # Tags to assign to the IAM policy
}
