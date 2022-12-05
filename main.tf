provider "aws" {
  region = "us-east-1"
  access_key_id = "AKIATCKLJBDODTP5NEOC"
  secret_access_key = "7vF7KnqlA+Bbbam/vFkGN9jbqpFDfqNXT2cNiC39"    
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ANSIBLE"
    host-2= "DOCKER"
}
  ami           = "ami-02b972fec07f1e659"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.key}"
  }
}

