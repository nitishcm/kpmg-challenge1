resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    aws-resource = "vpc"
  }
}


resource "aws_subnet" "pvt_app1_subnet" {
  cidr_block = var.subnet_cidr.app1_subnet
  vpc_id     = aws_vpc.vpc.id
  tags = {
    aws-resource = "subnet"
    name         = "private-app1-subnet"
  }
}


resource "aws_subnet" "pvt_app2_subnet" {
  cidr_block = var.subnet_cidr.app2_subnet
  vpc_id     = aws_vpc.vpc.id
  tags = {
    aws-resource = "subnet"
    name         = "private-app2-subnet"
  }
}

resource "aws_subnet" "pvt_db1_subnet" {
  cidr_block = var.subnet_cidr.db1_subnet
  vpc_id     = aws_vpc.vpc.id
  tags = {
    aws-resource = "subnet"
    name         = "private-db1-subnet"
  }
}


resource "aws_subnet" "pvt_db2_subnet" {
  cidr_block = var.subnet_cidr.db2_subnet
  vpc_id     = aws_vpc.vpc.id
  tags = {
    aws-resource = "subnet"
    name         = "private-db2-subnet"
  }
}


resource "aws_subnet" "pub_1_subnet" {
  cidr_block = var.subnet_cidr.public1_subnet
  vpc_id     = aws_vpc.vpc.id
  tags = {
    aws-resource = "subnet"
    name         = "public-1-subnet"
  }
}

resource "aws_subnet" "pub_2_subnet" {
  cidr_block = var.subnet_cidr.public2_subnet
  vpc_id     = aws_vpc.vpc.id
  tags = {
    aws-resource = "subnet"
    name         = "public-2-subnet"
  }
}