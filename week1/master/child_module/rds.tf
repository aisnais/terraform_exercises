resource "aws_db_instance" "ais_rds" {
  allocated_storage    = var.storage
  db_name              = var.rds_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true
}