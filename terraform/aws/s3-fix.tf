resource "aws_s3_bucket" "test_bucket_supp_1" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  # checkov:skip=BC_AWS_S3_14:mor test 123
  arn           = "arn:aws:s3:::619572639823-acme-dev-financials-test-mor4"
  bucket        = "${local.resource_prefix.value}-financials-test-mor4"
  
  acl           = "private"
  
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-financials-test-mor4"
    Environment = local.resource_prefix.value
  }
  versioning {
    enabled = false
  }
}