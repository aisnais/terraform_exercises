provider "aws" {
  region = "us-east-1"
}

module "iam-user" {
  source  = "../users_module"
  user_names = ["alice", "bob", "john"]
}

output "my-users" {
  value       = module.iam-user.user_arn
}

module "iam-policy" {
  source  = "../policy_module"
  policy_name = "ReadOnly"
  policy_description = "EC2 ReadOnly access to users"
  attach_name = "policy_attach"
  iam_users = module.iam-user.iam_users
}

module "server" {
  source = "../ec2_module"
  instance_tag = {
    server1: "first_instance"
    server2: "second_instance"
    server3: "third_instance"
  }
  ami_id = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
}

output "ip" {
  value = module.server.public_ip
}