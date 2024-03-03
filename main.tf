# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  required_version = ">= 1.1.0"
}
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-instance"
  }
}
