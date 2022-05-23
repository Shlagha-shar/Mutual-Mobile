data "aws_iam_policy_document" "sts" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::751555341958:user/Shlagha.sharma","arn:aws:iam::751555341958:user/test"]
    }
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::751555341958:user/test"]
    }
  }
}
