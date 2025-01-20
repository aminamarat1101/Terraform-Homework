resource "aws_iam_user" "users" {
  name = "jenny"
}

resource "aws_iam_user" "users2" {
  name = "rose"
}

resource "aws_iam_user" "users3" {
  name = "lisa"
}

resource "aws_iam_user" "users4" {
  name = "jisoo"
}

resource "aws_iam_user" "users5" {
  name = "jihyo"
}

resource "aws_iam_user" "users6" {
  name = "sana"
}

resource "aws_iam_user" "users7" {
  name = "momo"
}

resource "aws_iam_user" "users8" {
  name = "dahyun"
}

resource "aws_iam_group" "groups" {
  name = "blackpink"
}

resource "aws_iam_group" "groups2" {
  name = "twice"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.users.name,
    aws_iam_user.users2.name,
    aws_iam_user.users3.name,
    aws_iam_user.users4.name,
  ]

  group = aws_iam_group.groups.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.users5.name,
    aws_iam_user.users6.name,
    aws_iam_user.users7.name,
    aws_iam_user.users8.name,
  ]

  group = aws_iam_group.groups2.name
}