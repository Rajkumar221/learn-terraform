resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

provisioner "remote-exec" {

   connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }
    inline = [
      "sudo lab auto ansibe",
      "ansible-pull -i localhost, -U https://github.com/Rajkumar221/roboshop-ansible.git  main.yml -e roll_name=frontend ",
    ]
  }

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}
