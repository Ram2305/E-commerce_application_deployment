provider "aws" {
  region     = "user choice"
  access_key = "user-access-key"
  secret_key = "user-secret-key"
}

resource "aws_instance" "myec2" {
    ami                    = "ami-id"
    instance_type          = var.x[count.index]
    vpc_security_group_ids = ["security-grp-id"]
    count                  = 4
    key_name               = "aws-managed-pem-key"
}

variable "x"{
    type = list 
    default = ["t2.medium","t2.medium","t2.micro","t2.micro"]
}

#infrasture code details or mentioned in the file for security purpose but structure of the code remains the same.
