# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "armageddon-app" {
  provider = aws
  cidr_block = "10.32.0.0/16"

  tags = {
    Name = "armageddon-app"
    Service = "armageddon-app1"
    Owner = "Cloudybills"
  }
}

resource "aws_vpc" "armageddon-app-usa" {
  provider = aws.usa
  cidr_block = "10.24.0.0/16"

  tags = {
    Name = "armageddon-app-usa"
    Service = "armageddon-app2"
    Owner = "Cloudybills"
  }
}
