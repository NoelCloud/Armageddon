resource "aws_security_group" "armageddon-LB-SG01" {
  provider = aws
  name        = "armageddon-LB-SG01"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.armageddon-app.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "armageddon-LB-SG01"
  }
}

resource "aws_security_group" "armageddon-TG01-SG01" {
  name        = "armageddon-TG01-SG01"
  description = "Allow TLS inbound traffic to target group"
  vpc_id      = "${aws_vpc.armageddon-app.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "armageddon-TG01-SG01"
  }
}
