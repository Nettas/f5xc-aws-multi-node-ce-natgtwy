output "aws_nat_gateway" {
  value = aws_nat_gateway.nat_gateway.id
}


output "nat_gateway_ip" {
  value = aws_eip.nat_gateway.public_ip
}

output "aws_vpc" {
  value = aws_vpc.vpc.id
}

output "aws_subnet" {
  value = aws_subnet.securityServicesSubnetOutsideAZ1.id
}

output "SecurityServiceInsideCIDRAZ1" {
  value = aws_subnet.securityServicesSubnetInsideAZ1.id
}

output "SecurityServiceOutsideCIDRAZ1" {
  value = aws_subnet.securityServicesSubnetOutsideAZ1.id
}

output "SecurityServiceWorlkoadCIDRAZ1" {
  value = aws_subnet.securityServicesSubnetWorkloadAZ1.id
}

output "SecurityServiceInsideCIDRAZ2" {
  value = aws_subnet.securityServicesSubnetInsideAZ2.id
}

output "SecurityServiceOutsideCIDRAZ2" {
  value = aws_subnet.securityServicesSubnetOutsideAZ2.id
}

output "SecurityServiceWorlkoadCIDRAZ2" {
  value = aws_subnet.securityServicesSubnetWorkloadAZ2.id
}

output "SecurityServiceInsideCIDRAZ3" {
  value = aws_subnet.securityServicesSubnetInsideAZ3.id
}

output "SecurityServiceOutsideCIDRAZ3" {
  value = aws_subnet.securityServicesSubnetOutsideAZ3.id
}

output "SecurityServiceWorlkoadCIDRAZ3" {
  value = aws_subnet.securityServicesSubnetWorkloadAZ3.id
}

output "aws_default_security_group" {
  value = aws_default_security_group.securitygroup.id
}
