provider "aws" {
  region = "us-east-1"
  access_key = "AKIATCKLJBDOB4QUDAUQ"
  secret_key = "79IWvpgbqqlAk3g0aUeSCgHvHekHE2Fgnbew8zHJ"
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ANSIBLE"
    host-2= "Docker"
}
  ami           = "ami-02b972fec07f1e659"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.value}" 
  }
}

