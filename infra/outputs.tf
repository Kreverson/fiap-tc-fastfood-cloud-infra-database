output "db_instance_endpoint" {
  description = "Endpoint do banco de dados MySQL"
  value       = aws_db_instance.mysql.endpoint
}

output "db_instance_id" {
  description = "ID da instância do banco de dados MySQL"
  value       = aws_db_instance.mysql.id
}

output "db_name" {
  description = "Nome da instância do banco de dados MySQL"
  value       = aws_db_instance.mysql.db_name
  sensitive   = true
}

output "db_user" {
  description = "User da instância do banco de dados MySQL"
  value       = aws_db_instance.mysql.username
  sensitive   = true
}

output "db_password" {
  description = "Password da instância do banco de dados MySQL"
  value       = aws_db_instance.mysql.password
  sensitive   =  true
}