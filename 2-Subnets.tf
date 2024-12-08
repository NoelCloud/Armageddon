#These are   for  public
resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.armageddon-app-usa.id
  cidr_block              = "10.24.1.0/24"
  availability_zone       = "us-east-1a"
  provider = aws.usa

  tags = {
    Name    = "public-us-east-1a"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}

resource "aws_subnet" "public-ap-northeast-1a" {
  vpc_id                  = aws_vpc.armageddon-app.id
  cidr_block              = "10.32.1.0/24"
  availability_zone       = "ap-northeast-1a"
  provider = aws

  tags = {
    Name    = "public-ap-northeast-1a"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}

resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.armageddon-app.id
  cidr_block              = "10.32.2.0/24"
  availability_zone       = "ap-northeast-1c"
  provider = aws

  tags = {
    Name    = "public-ap-northeast-1c"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}


resource "aws_subnet" "public-ap-northeast-1d" {
  vpc_id                  = aws_vpc.armageddon-app.id
  cidr_block              = "10.32.3.0/24"
  availability_zone       = "ap-northeast-1d"
  provider = aws

  tags = {
    Name    = "public-ap-northeast-1d"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  vpc_id            = aws_vpc.armageddon-app.id
  cidr_block        = "10.32.11.0/24"
  availability_zone = "ap-northeast-1a"
  provider = aws

  tags = {
    Name    = "private-ap-northeast-1a"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}

resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id            = aws_vpc.armageddon-app.id
  cidr_block        = "10.32.12.0/24"
  availability_zone = "ap-northeast-1c"
  provider = aws

  tags = {
    Name    = "private-ap-northeast-1c"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}


resource "aws_subnet" "private-ap-northeast-1d" {
  vpc_id            = aws_vpc.armageddon-app.id
  cidr_block        = "10.32.13.0/24"
  availability_zone = "ap-northeast-1d"
  provider = aws

  tags = {
    Name    = "private-ap-northeast-1d"
    Service = "armageddon-app1"
    Owner   = "Cloudybills"
    Planet  = "Earth"
  }
}
