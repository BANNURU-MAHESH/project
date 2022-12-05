provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ANSIBLE"
    host-2= "DOCKER"
}
  ami           = "ami-02b972fec07f1e659"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.value" 
  }
}

