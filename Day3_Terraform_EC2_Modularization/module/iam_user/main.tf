resource "aws_iam_user" "user"{

    name = var.user_name
    tags = var.tags
}

resource "aws_iam_user_policy" "policy"{

    name = var.policy_name
    user = aws_iam_user.user.name
    policy = file(var.policy_file)
}