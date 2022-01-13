resource "aws_s3_bucket" "test_bucket_supp_1" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  # checkov:skip=BC_AWS_S3_14:mor test 123
  arn    = "arn:aws:s3:::619572639823-acme-dev-financials-test-mor4"
  bucket = "${local.resource_prefix.value}-financials-test-mor4"

  acl = "private"

  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-financials-test-mor4"
    Environment          = local.resource_prefix.value
    git_commit           = "21481f46e7a9395a518b9fb05dad629472fbdd0e"
    git_file             = "terraform/aws/s3-fix.tf"
    git_last_modified_at = "2021-08-04 11:17:36"
    git_last_modified_by = "ravni@paloaltonetworks.com"
    git_modifiers        = "ravni"
    git_org              = "rotemavni"
    git_repo             = "terragoat"
    yor_trace            = "fcba6d15-45c5-40c4-b5d0-c76044524efd"
  }
  versioning {
    enabled = false
  }
}