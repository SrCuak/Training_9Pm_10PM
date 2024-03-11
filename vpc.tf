#Create a vpc
resource "aws_vpc" "demovpc" {
    cidr_block = "10.2.0.0/24"  #provide your cidr block
    enable_dns_support = true
    enable_dns_hostnames = true
  tags = {
    Name = "demovpc"
  }
}
# create pubilc subnet 1
resource "aws_subnet" "demovpc-pulic-subnet1" {
    vpc_id = aws_vpc.demovpc.id
    cidr_block = "10.2.0.0/26"
    availability_zone = var.Zone1A
    map_public_ip_on_launch = "true"
    tags = { 
      Name = demo_pubilc_subnet_1
    }

}
/*
# create pubilc subnet 2
resource "aws_subnet" "demovpc-pulic-subnet2" {
  vpc_id = aws_vpc.demovpc.id
  cidr_block = "10.2.0.64/26"
   
}
*/

# create private subnet 1
resource "aws_subnet" "demovpc-Private-subnet1" {
  vpc_id = aws_vpc.demovpc.id
  cidr_block = "10.2.0.128/26"
  availability_zone = var.Zone1B
  
    tags = { 
      Name = demo_pubilc_subnet_1
    }
}
/*
# create private subnet 2
resource "aws_subnet" "demovpc-Private-subnet2" {
  vpc_id = aws_vpc.demovpc.id
  cidr_block = "10.2.0.192/26"
}
*/