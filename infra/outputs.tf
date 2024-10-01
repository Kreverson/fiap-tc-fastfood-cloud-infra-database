output "db_instance_endpoint" {
  value       = aws_db_instance.mysql.endpoint
}

output "db_instance_id" {
  value       = aws_db_instance.mysql.id
}

output "db_name" {
  value       = aws_db_instance.mysql.db_name
  sensitive   = true
}

output "db_username" {
  value       = aws_db_instance.mysql.username
  sensitive   = true
}

output "db_password" {
  value       = aws_db_instance.mysql.password
  sensitive   =  true
}