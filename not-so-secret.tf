resource "random_password" "not_so_secret_password" {
  length  = 16
  special = true
}

resource "aws_secretsmanager_secret" "not_so_secret" {
  name = "my-not-so-secret"
}

resource "aws_secretsmanager_secret_version" "not_so_secret_version" {
  secret_id     = aws_secretsmanager_secret.not_so_secret.id
  secret_string = random_password.not_so_secret_password.result
}


output "not_so_secretsmanager_secret" {
  value = aws_secretsmanager_secret_version.not_so_secret_version.secret_string
  sensitive = true
  
}

output "not_so_random_password" {
  value = random_password.not_so_secret_password.result
  sensitive = true
}