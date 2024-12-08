resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.armageddon-app.id

  tags = {
    Name    = "armageddon-app_IG"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}
