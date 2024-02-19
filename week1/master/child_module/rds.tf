resource "aws_db_instance" "ais_rds" {
  allocated_storage    = var.storage
  db_name              = var.rds_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  vpc_security_group_ids = [aws_security_group.ais_sg.id]
  skip_final_snapshot  = true
}

data "aws_vpc" "default" {
  default = true
}


resource "aws_security_group" "ais_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.aws_vpc.default.id

  tags = {
    Name = var.sg_name
  }

  ingress {
    from_port       = var.fromport
    to_port         = var.toport
    protocol        = var.sg_protocol
    cidr_blocks = var.sg_cidr
  }
}