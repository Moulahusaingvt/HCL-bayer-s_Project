terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkinsmaster" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  keyname       = "HCLProject"
  count         = 2

  tags = {
    Name = "HCLInstance"
  }
}
