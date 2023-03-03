data "aws_iam_policy_document" "inline_policy_S3Acccess" {
  statement {
    sid = "1"

    actions = ["*"]

    resources = [
      "arn:aws:s3:::*",
    ]
  }
}
