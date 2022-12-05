provider "aws" {
  region = "us-east-1"
  aws_access_key_id = AKIATCKLJBDOB4QUDAUQ
  aws_secret_access_key = 79IWvpgbqqlAk3g0aUeSCgHvHekHE2Fgnbew8zHJ
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ANSIBLE"
    host-2= "DOCKER"
}
  ami           = "ami-02b972fec07f1e659"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.value}"
  }
}

