resource "aws_iam_policy" "admin_user_policy" {
  name        = "admin_user"
  path        = "/"
  description = "practice"

  policy = <<EOF
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
EOF
}