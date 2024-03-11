resource "aws_internet_gateway" "Demo_IGW" {
    vpc_id = var.vpcid  
}