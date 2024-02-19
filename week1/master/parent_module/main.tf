provider "aws" {
  region = "us-east-1"
}

module dev {
  source  = "../child_module"
  sg_name = "ais_sg"
  sg_description = "Allowing SSH"
  sg_cidr = ["0.0.0.0/0"]
  fromport = 22
  toport = 22
  sg_protocol = "tcp"
  storage = 10
  rds_name = "aisdatabase"
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t3.micro"
  username = "ais"
  password = "ais20232024"
}

output "rds_arn" {
  value       = module.dev.rds_arn
}

output "sg_arn" {
  value       = module.dev.sg_arn
}

