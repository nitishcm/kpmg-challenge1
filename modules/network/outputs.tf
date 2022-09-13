output "vpc_id" {
  value = aws_vpc.vpc.id
}


output "pvt_app1_subnet" {
  value = aws_subnet.pvt_app1_subnet.id
}

output "pvt_app2_subnet" {
  value = aws_subnet.pvt_app2_subnet.id
}