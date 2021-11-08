# --- root/main.tf ---

data "aws_iam_account_alias" "my_aws_account" {}

resource "aws_s3_bucket" "my_first_bucket" {
  depends_on = [
    data.aws_iam_account_alias.my_aws_account
  ]

  bucket = "${var.owner}-${var.project}-${data.aws_iam_account_alias.my_aws_account.id}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }

  tags = {
    Name    = "${var.owner}-${var.project}-${data.aws_iam_account_alias.my_aws_account.id}"
    Project = var.project
    Owner   = var.owner
  }
}
