https://developer.hashicorp.com/terraform/internals/debugging

TRACE
DEBUG
INFO
WARN
ERROR

export TF_LOG_CORE=TRACE
export TF_LOG_PROVIDER=TRACE

export TF_LOG_CORE=INFO
export TF_LOG_PROVIDER=INFO

# init
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/thettun/Downloads/aws-networking/terraform/session-01/terraform_init.log
terraform init

# fmt
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/thettun/Downloads/aws-networking/terraform/session-01/terraform_fmt.log
terraform fmt

# validate
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/thettun/Downloads/aws-networking/terraform/session-01/terraform_validate.log
terraform validate

# plan
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/thettun/Downloads/aws-networking/terraform/session-01/terraform_plan.log
terraform plan

# apply
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/thettun/Downloads/aws-networking/terraform/session-01/terraform_apply.log
terraform apply


