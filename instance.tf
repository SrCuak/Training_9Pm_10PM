resource "aws_instance" "demotraining" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    key_name = "demoserver"
    count = "1"
    root_block_device {
      volume_type = "gp3"
      volume_size = "30"
      iops = 3000
    } 
tags = {
  name = "demotraining-${count.index+1}"
}
}