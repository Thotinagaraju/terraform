resource "aws_security_group" "allow_all" {
  name        = var.sg-name
  description = var.sg-description

  ingress {
    description = "TLS from VPC"
    from_port   = var.inbound-from-port
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr-blocks

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "roboshop-all"
  }

}