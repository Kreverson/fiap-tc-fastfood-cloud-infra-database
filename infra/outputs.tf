output "db_instance_endpoint" {
  description = "Endpoint do banco de dados MySQL"
  value       = aws_db_instance.mysql.endpoint
}

output "db_instance_id" {
  description = "ID da instância do banco de dados MySQL"
  value       = aws_db_instance.mysql.id
}