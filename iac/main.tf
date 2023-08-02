terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# To use this on my work computer I need profile = "philip"
provider "aws" {
  region = "us-east-2"
  profile = "philip"
}

provider "aws" {
  region = "us-east-1"
  alias  = "aws_USE1"
  profile = "philip"
}

data "template_file" "bootstrap" {
  # template = "${file("${path.cwd}/../ec2/boostrap.sh")}"
  template = file("../ec2/bootstrap.sh")
}

# INSTANCES
# These are all hardcoded for now... 
# Presently focusing on Ubuntu but can switch over to Amazon Linux if desired.
resource "aws_spot_instance_request" "ohio-small" {
	count         = var.quantities.USE2.small
	ami           = var.USE2.amis.ubuntu
	instance_type = var.instance_types.small
	spot_price    = "0.04"
	key_name      = var.USE2.key_name

user_data = file("../ubuntu/bootstrap.sh")
# This has no observable effect in spot.
tags = {
  Name = "ohio-small"

  }
}

resource "aws_spot_instance_request" "ohio-large" {
  count         = var.quantities.USE2.large
  # ami           = var.USE2.amis.ubuntu
  ami           = var.USE2.amis.amazon_linux
  instance_type = var.instance_types.large
  spot_price    = "0.10"
  key_name      = var.USE2.key_name

  user_data = file("../ubuntu/bootstrap.sh")
  # user_data = file("../ec2/bootstrap.sh")
  tags = {
    Name = "ohio-large"
  }
}

resource "aws_spot_instance_request" "virginia-small" {
  provider = aws.aws_USE1
  count    = var.quantities.USE1.small
  # us-east-1 doesn't recognize its own stated AMI for Ubuntu. Why not?
  ami           = var.USE1.amis.ubuntu
  instance_type = var.instance_types.small
  spot_price    = "0.04"
  key_name      = var.USE1.key_name
  user_data = file("startup.sh")
  tags = {
    Name = "virginia-m5.large-perftest"

  }
}

resource "aws_spot_instance_request" "virginia-large" {
  provider      = aws.aws_USE1
  count         = var.quantities.USE1.large
  ami           = var.USE1.amis.ubuntu
  instance_type = var.instance_types.large
  spot_price    = "0.10"
  key_name      = var.USE1.key_name
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  user_data = file("startup.sh")
  tags = {
    Name = "virginia-m5.large-perftest"

  }
}
output "instances" {
  value       = "${aws_spot_instance_request.ohio-large.*.private_ip}"
  description = "PrivateIP address details"
}
