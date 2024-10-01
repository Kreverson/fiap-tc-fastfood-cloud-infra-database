resource "aws_db_instance" "mysql" {
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = var.db_username
  password          = var.db_password
  vpc_security_group_ids = [data.terraform_remote_state.cloud-infra-api.outputs.rds_sg_id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.environment}-fastfood-db-subnet-group"
  subnet_ids = data.terraform_remote_state.cloud-infra-api.outputs.rds_private_subnet_ids
}
