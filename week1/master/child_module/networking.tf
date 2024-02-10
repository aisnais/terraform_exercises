resource "aws_vpc" "ais_vpc" {
  cidr_block       = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "ais_subnet1" {
  vpc_id     = aws_vpc.ais_vpc.id
  cidr_block = var.cidr_sub1

  tags = {
    Name = var.sub1_tag
  }
}

resource "aws_subnet" "ais_subnet2" {
  vpc_id     = aws_vpc.ais_vpc.id
  cidr_block = var.cidr_sub2

  tags = {
    Name = var.sub2_tag
  }
}

resource "aws_security_group" "ais_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.ais_vpc.id

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