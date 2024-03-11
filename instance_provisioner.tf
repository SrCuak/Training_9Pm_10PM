resource "aws_instance" "demotraining" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    key_name = "demoserver"
    count = "1"

connection {
  type     = "ssh"
    user     = "ubuntu"
    private_key = file("./demoserver.pem")
    host     = self.public_ip
}
provisioner "remote-exec" {
  inline = [
    "sudo apt-get install apache2 -y",
    "sudo systemctl restart apache2",
    "sudo systemctl enable apache2"

          
  ]
}
    
tags = {
  name = "demotraining}"
}
}

