# get all available AZs in our region
data "aws_availability_zones" "available_azs" {
  state = "available"
  filter {
    name   = "zone-name"
    values = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1f"]
  }
}
data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN

#  filter {
#    name   = "name"
#    values = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1f"]
#  }