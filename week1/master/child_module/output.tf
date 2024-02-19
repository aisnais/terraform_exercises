output "rds_arn" {
  value = aws_db_instance.ais_rds.arn
}

output "sg_arn" {
    value = aws_security_group.ais_sg.arn
}
