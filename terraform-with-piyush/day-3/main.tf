resource aws_s3 first_bucket {
    bucket = var.bucket_name

}
resource aws_s3_bucket_public_access_block first_bucket_public_access {
    bucket = aws_s3.first_bucket.id

    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
}
resouce aws_cloudfront_origin__access_control first_bucket_oac {
    name = "first-bucket-oac"
    origin_access_control_origin_type = "s3"
    signing_behavior = "always"
    signing_protocol = "sigv4"
}
resource aws_s3_bucket_policy first_bucket_policy {
    bucket = aws_s3.first_bucket.id
    policy = data.aws_iam_policy_document.first_bucket_policy.json
}

data "aws_iam_policy_document" "first_bucket_policy" {
    statement {
        actions = ["s3:GetObject"]
        resources = ["${aws_s3.first_bucket.arn}/*"]
        principals {
            type = "AWS"
            identifiers = [aws_cloudfront_origin_access_control.first_bucket_oac.iam_arn]
        }
    }
}