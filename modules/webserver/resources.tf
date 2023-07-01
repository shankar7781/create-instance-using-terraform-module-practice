resource "aws_key_pair" "terrakey" {
  key_name   = "terrakey"
public_key = var.key
}


resource "aws_instance" "created_using_terraform" {
  ami           = var.image_id
  instance_type = var.instance_type
  key_name=aws_key_pair.terrakey.key_name
}
