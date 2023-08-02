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
# These are all hardcoded for now.
# There may be some fancy way to iterate with for_each, but we need to figure out how to
# make the alternative providers for other regions work. Perhaps it would be better to do one of these
# per region.
# Also note that for_each prevents use of count.

resource "aws_spot_instance_request" "ohio-micro-amazon" {
  count         = var.quantities.USE2.micro.amazon
  ami           = var.config.USE2.amis.amazon_linux
  user_data = file("../ec2/bootstrap.sh")
  instance_type = var.instance_types.micro
  spot_price    = "0.04"
  key_name      = var.config.USE2.key_name

  # This has no observable effect in spot.
  tags = {
    Name = "ohio-micro-amazon"

  }
}

resource "aws_spot_instance_request" "ohio-micro-ubuntu" {
	count         = var.quantities.USE2.micro.ubuntu
    ami           = var.config.USE2.amis.ubuntu_amd
    user_data = file("../ubuntu/bootstrap.sh")
	instance_type = var.instance_types.micro
	spot_price    = "0.04"
	key_name      = var.config.USE2.key_name

# This has no observable effect in spot.
  tags = {
    Name = "ohio-micro-ubuntu"

  }
}

resource "aws_spot_instance_request" "ohio-large" {
# Why is this not observed??
  count         = var.quantities.USE2.large

#  ami           = var.config.USE2.amis.ubuntu_amd
#  user_data = file("../ubuntu/bootstrap.sh")
  ami           = var.config.USE2.amis.amazon_linux
  user_data = file("../ec2/bootstrap.sh")

  instance_type = var.instance_types.large
  spot_price    = "0.08"
  key_name      = var.config.USE2.key_name

  tags = {
    Name = "ohio-large"
  }
}

resource "aws_spot_instance_request" "virginia-micro" {
  provider = aws.aws_USE1
  count    = var.quantities.USE1.micro
  ami           = var.config.USE1.amis.ubuntu_amd
  instance_type = var.instance_types.micro
  spot_price    = "0.04"
  key_name      = var.config.USE1.key_name
  user_data = file("startup.sh")
  tags = {
    Name = "virginia-micro"

  }
}

resource "aws_spot_instance_request" "virginia-large" {
  provider      = aws.aws_USE1
  count         = var.quantities.USE1.large
  ami           = var.config.USE1.amis.ubuntu_amd
  instance_type = var.instance_types.large
  spot_price    = "0.10"
  key_name      = var.config.USE1.key_name
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  user_data = file("startup.sh")
  tags = {
    Name = "virginia-m5.large"

  }
}


output "instances" {
  value       = {
    ohio-large: "${aws_spot_instance_request.ohio-large.*.private_ip}"
    ohio-micro-amazon: "${aws_spot_instance_request.ohio-micro-amazon.*.private_ip}"
    ohio-micro-ubuntu: "${aws_spot_instance_request.ohio-micro-ubuntu.*.private_ip}"
  }
  description = "PrivateIP address details"
}
