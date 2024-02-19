resource "aws_iam_user" "ais-users" {
  count = length(var.user_names)
  name = var.user_names[count.index]

  tags = {
    Name = "user ${count.index}"
  }
}

output iam_users {
  value       = aws_iam_user.ais-users[*].name
}

