
output "public_ip" {

value=aws_instance.created_using_terraform.public_ip
}
