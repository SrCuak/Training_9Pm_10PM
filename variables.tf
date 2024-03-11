variable "AWS_REGION" {
    default = "ap-south-1" 
}

variable "AWS_ACCESS_KEY" {
  type = string
  default = "AKIAYDDHIM3ZH5NBDS4A"
}
variable "AWS_SECRET_KEY" {
    type = string
    default = "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"
  
}
variable "AMI" {
  default = "ami-03f4878755434977f"
 
}
variable "Zone1A" {
  default = "ap-south-1a"
  
}

variable "Zone1B" {
  default = "ap-south-1b"
}
variable "vpcid" {
  default = "aws_vpc.demovpc.id"
}
variable "routetable" {
  default = "aws_route_table.Demo_pub_rt.id"
}
variable "AWS_Pub_subnet" {
  default = "aws_subnet.demovpc-pulic-subnet1.id"
}
variable "AWS_Pub_RT" {
  default = "aws_route_table.Demo_pub_rt.id"
}

variable "IGW" {
  default = "aws_internet_gateway.Demo_IGW.id"
  
}