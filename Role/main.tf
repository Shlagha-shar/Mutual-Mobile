# data "aws_iam_policy_document" "sts" {
#   statement {
#     actions = ["sts:AssumeRole"]

#     principals {
#       type        = "AWS"
#       identifiers = ["arn:aws:iam::751555341958:user/Shlagha.sharma"]
#     }
#   }
# }

resource "aws_iam_role" "sts-role" {
  name               = "sts-role"
  assume_role_policy = data.aws_iam_policy_document.sts.json
}

resource "aws_iam_policy" "sts-policy" {
  name      = "sts-role-policy"
#   role      = aws_iam_role.stsrole.id
  policy    = jsonencode({
    "Version" = "2012-10-17"
    "Statement"  = [
        {
            "Effect" = "Allow",
            "Action" = "*",
            "Resource" = "*",
            "Condition" = {
                "StringEquals" = {
                    "aws:RequestedRegion" = "us-west-1"
                }
            }
        },
        {
            "Effect" = "Allow",
            "Action" = "ec2:*",
            "Resource" = "*",
            "Condition" = {
                "StringEquals" = {
                    "aws:RequestedRegion" = "us-west-1"
                }
            }
        },
        {
            "Effect" = "Allow",
            "Action" = "elasticbeanstalk:*",
            "Resource" = "*",
            "Condition" = {
                "StringEquals" = {
                    "aws:RequestedRegion" = "us-west-1"
                }
            }
        },
        {
            "Effect" = "Allow",
            "Action" = "iam:*"
            "Resource" = "*"
            "Condition" = {
                "StringEquals" = {
                    "aws:RequestedRegion" = "us-west-2"
                }
            }
        },
        {
            "Effect" = "Allow",
            "Action" = "s3:*",
            "Resource" = "*",
            "Condition" = {
                "StringEquals" = {
                    "aws:RequestedRegion" = "us-west-2"
                }
            }
        },

    ]
})
}
resource "aws_iam_role_policy_attachment" "role-policy-attach" {
  role       = aws_iam_role.sts-role.name
  policy_arn = aws_iam_policy.sts-policy.arn
}
output "role_arn" {
    value = aws_iam_role.sts-role.arn
}


