subnet_count       = 2
ec2_instance_count = 4

# ec2_instance_config_list = [
#   {
#     instance_type = "t2.micro"
#     # instance_type = "t3.micro" #! Will not work because of validation that limits to use only t2.micro

#     ami           = "ubuntu"
#     # ami = "ubuntu2" #! Will not work because of validation that limits to use only "ubuntu" and "nginx"
#   },
#   {
#     instance_type = "t2.micro"
#     ami           = "nginx"
#   }
# ]

ec2_instance_config_map = {
  ubuntu_1 = {
    instance_type = "t2.micro"
    ami           = "ubuntu"
  }

  nginx_1 = {
    instance_type = "t2.micro"
    ami           = "nginx"
  }
}