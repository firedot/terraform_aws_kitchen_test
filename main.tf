variable "ami_id" {}
variable "aws_secret_key" {}
variable "aws_access_key" {}
variable "region_id" {}

resource "aws_instance" "web01" {
  ami             = "${var.ami_id}"
  instance_type   = "t2.micro"
  security_groups = ["test-sec-group"]
  key_name        = "hive"

  tags = {
    Name = "web01"
  }

  provisioner "file" {
    source      = "./scripts/install_nginx.sh"
    destination = "/tmp/install_nginx.sh"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("./priv/id_rsa_aws")}"
    }
  }
}

provider "aws" {
  region = "${var.region_id}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

output "public_ip" {
  value = "${aws_instance.web01.public_ip}"
}
