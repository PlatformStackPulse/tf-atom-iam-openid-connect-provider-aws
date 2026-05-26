# -----------------------------------------------------
# Atom: IAM OpenID Connect Provider
# Creates an OIDC identity provider (GitHub Actions, EKS, etc.)
# -----------------------------------------------------
resource "aws_iam_openid_connect_provider" "this" {
  count = module.this.enabled ? 1 : 0

  url             = var.url
  client_id_list  = var.client_id_list
  thumbprint_list = var.thumbprint_list

  tags = local.tags
}
