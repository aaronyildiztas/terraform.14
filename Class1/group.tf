resource "aws_iam_group" "multi-group" {
  name     = each.key
  for_each = toset( ["Dev", "QA","Stage","Prod"] )
  
}


resource "aws_iam_group_membership" "dev_team" {
  name = "dev_team_membership"
  users = [
    aws_iam_user.multi-user["Aaron"].name
  ]
  group = aws_iam_group.multi-group["Dev"].name
}

resource "aws_iam_group_membership" "QA_team" {
  name = "QA_team_membership"
  users = [
    aws_iam_user.multi-user["Harun"].name
  ]
  group = aws_iam_group.multi-group["QA"].name
}
resource "aws_iam_group_membership" "Stage_team" {
  name = "Stage_team_membership"
  users = [
    aws_iam_user.multi-user["Musa"].name
  ]
  group = aws_iam_group.multi-group["Stage"].name
}
resource "aws_iam_group_membership" "Prod_team" {
  name = "Prod_team_membership"
  users = [
    aws_iam_user.multi-user["Aaron"].name,
    aws_iam_user.multi-user["Harun"].name,
    aws_iam_user.multi-user["Musa"].name
  ]
  group = aws_iam_group.multi-group["Prod"].name
}
