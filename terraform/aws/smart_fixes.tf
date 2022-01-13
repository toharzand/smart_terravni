resource "aws_s3_bucket" "foo-bucket" {
  region        = var.region
  bucket        = local.bucket_name
  force_destroy = true
  #checkov:skip=CKV_AWS_20:The bucket is a public static content host

  tags = {
    Name                 = "foo-${data.aws_caller_identity.current.account_id}"
    git_commit           = "0b5952cd5b424f69e3c6ed9c2bcb12722ed751ab"
    git_file             = "terraform/aws/smart_fixes.tf"
    git_last_modified_at = "2022-01-05 09:19:51"
    git_last_modified_by = "ravni@paloaltonetworks.com"
    git_modifiers        = "ravni"
    git_org              = "rotemavni"
    git_repo             = "terragoat"
    yor_trace            = "c61a0562-2709-44b2-8e99-b1b8eeef62d5"
  }
  versioning {
    enabled = true
  }
  logging {
    target_bucket = "${aws_s3_bucket.log_bucket.id}"
    target_prefix = "log/"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${aws_kms_key.mykey.arn}"
        sse_algorithm     = "aws:kms"
      }
    }
  }
  acl = "public-read"
}
data "aws_caller_identity" "current" {}