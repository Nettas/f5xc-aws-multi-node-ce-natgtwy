data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  az1 = var.az1 != null ? var.az1 : data.aws_availability_zones.available.names[0]
  az2 = var.az2 != null ? var.az2 : data.aws_availability_zones.available.names[1]
  az3 = var.az3 != null ? var.az3 : data.aws_availability_zones.available.names[2]
}

resource "aws_default_security_group" "securitygroup" {
  vpc_id = aws_vpc.vpc.id
  ingress {
    description = "Permit All Traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Permit all egress traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Name" = "SG-ALL"
  }
}

resource "aws_subnet" "securityServicesSubnetInsideAZ1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceInsideCIDRAZ1
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetOutsideAZ1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceOutsideCIDRAZ1
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetWorkloadAZ1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceWorkloadCIDRAZ1
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetInsideAZ2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceInsideCIDRAZ2
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetOutsideAZ2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceOutsideCIDRAZ2
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetWorkloadAZ2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceWorkloadCIDRAZ2
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetInsideAZ3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceInsideCIDRAZ3
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetOutsideAZ3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceOutsideCIDRAZ3
  availability_zone = local.az1
}

resource "aws_subnet" "securityServicesSubnetWorkloadAZ3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.SecurityServiceWorkloadCIDRAZ3
  availability_zone = local.az1
}