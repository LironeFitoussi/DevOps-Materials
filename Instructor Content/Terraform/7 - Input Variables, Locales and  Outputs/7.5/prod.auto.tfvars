ec2_instance_type = "t2.micro" # safe for Free Tier

additional_tags = {
  ValuesFrom = "prod.auto.tfvars"
}