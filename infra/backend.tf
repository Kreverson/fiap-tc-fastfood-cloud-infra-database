data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = var.state_file
    key    = "${var.environment}/vpc/terraform.tfstate"
    region = var.aws_region
  }
}

data "terraform_remote_state" "rds" {
  backend = "s3"
  config = {
    bucket = var.state_file
    key    = "${var.environment}/rds/terraform.tfstate"
    region = var.aws_region
  }
}

output "rds_endpoint" {
  value = data.terraform_remote_state.rds.outputs.db_instance_endpoint
}

output "rds_instance_id" {
  value = data.terraform_remote_state.rds.outputs.db_instance_id
}
