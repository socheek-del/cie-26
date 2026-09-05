output "account_id" {
    description = "my account_id description"
    value = data.aws_caller_identity.master-aws-account.account_id
}

output "caller_arn" { 
    value = data.aws_caller_identity.master-aws-account.arn
}

output "caller_user" {
    value = data.aws_caller_identity.master-aws-account.user_id
}

output "arn" { 
    value = data.aws_caller_identity.master-aws-account.arn
}