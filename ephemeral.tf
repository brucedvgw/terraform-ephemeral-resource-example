locals {
  secret_version = "1"
}

ephemeral "random_password" "secret_password" {
  length  = 16
  special = true
}

resource "aws_secretsmanager_secret" "secret" {
  name = "very-secret"
}

resource "aws_secretsmanager_secret_version" "secret_version" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string_wo = ephemeral.random_password.secret_password.result
  secret_string_wo_version = local.secret_version # Used to trigger an update of this resource if the secret needs to be updated.
}

output "ephemeral_aws_secretsmanager_secret" {
  value = aws_secretsmanager_secret_version.secret_version.secret_string
  sensitive = true
}
