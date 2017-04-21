provider "aws" {
  access_key  = "AKIAIHBXHSUGNE2MFI6Q"
  secret_key  = "Mbn2itjUTnhg6eQn/M7Gg3aw2fd27JufuBKmMTAd"
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"


#resource "aws_eip" "ip" {
# instance = "${aws_instance.example.id}"
#}

 provisioner "local-exec" {
  command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
 }
}
