provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQRAKB6WDL5KPZBXF"
  secret_key = "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"
}

resource "aws_instance" "fifty" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "testing"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}



resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "olatide"
  }
}
