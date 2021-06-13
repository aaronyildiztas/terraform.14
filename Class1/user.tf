resource "aws_iam_user" "multi-user" {
  for_each = toset( ["Aaron", "Musa","Harun"] )
  name     = each.key
}

