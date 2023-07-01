# resource "aws_instance" "created_using_terraform" {
#  ami           = "${var.image_id}"
#  instance_type = "${var.instance_type}"
# }



module "my_webserver" {
source= "./modules/webserver/"
image_id= "${var.image_id}"
instance_type="${var.instance_type}"
key= file("${path.module}/id_rsa.pub")
}

output "webserver_public_ip"{

value=module.my_webserver.public_ip
}
