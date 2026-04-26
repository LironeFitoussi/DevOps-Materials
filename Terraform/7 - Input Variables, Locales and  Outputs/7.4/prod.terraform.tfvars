ec2_instance_type = "t3.large"

ec2_volume_config = {
  type = "gp3"
  size = 50
}

additional_tags = {
  ValuesFrom = "terraform.tfvars"
}