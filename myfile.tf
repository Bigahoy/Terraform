provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQRAKB6WDPTAW5Y4X"
  secret_key = "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"
}

resource "aws_instance" "TEXT" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "text"
  }
}

resource "aws_vpc" "text" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "text"
  }
}

resource "aws_subnet" "text" {
  vpc_id     = aws_vpc.text.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "text"
  }
}

