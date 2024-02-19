resource "aws_instance" "ais-instance" {
  for_each = var.instance_tag
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = each.value
  }
}

output "public_ip" {
  value       = [for i in aws_instance.ais_instance: i.public_ip]
}
