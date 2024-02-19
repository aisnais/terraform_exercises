# variable bucket_name {
#   type        = string
#   description = "S3 bucket name"
# }

# variable vpc_cidr_block {
#   type        = string
#   description = "VPC CIDR block"
# }

# variable vpc_name {
#   type        = string
#   description = "VPC name"
# }

# variable cidr_sub1 {
#   type        = string
#   description = "CIDR block of subnet 1"
# }

# variable sub1_tag {
#   type        = string
#   description = "Subnet 1 tag"
# }


# variable cidr_sub2 {
#   type        = string
#   description = "CIDR block of subnet 2"
# }

# variable sub2_tag {
#   type        = string
#   description = "Subnet 2 tag"
# }

variable sg_name {
  type        = string
  description = "Security group name"
}

variable sg_description {
  type        = string
  description = "Security group allowing access to the ports"
}

variable sg_cidr {
  type        = list(string)
  description = "Security group CIDR block"
}

variable fromport {
  type        = number
  description = "From port"
}

variable toport {
  type        = number
  description = "To port"
}

variable sg_protocol {
  type        = string
  description = "SG protocol"
}

variable storage {
  type        = number
  description = "Database storage"
}

variable rds_name {
  type        = string
  description = "Database name"
}

variable engine {
  type        = string
  description = "Database engine"
}

variable engine_version {
  type        = string
  description = "Database engine version"
}

variable instance_class {
  type        = string
  description = "Database instance class"
}

variable username {
  type        = string
  description = "Username"
}

variable password {
  type        = string
  description = "Password"
}




