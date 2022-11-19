provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQRAKB6WDII6VI4K2"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "fifty-server"
  }
}