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
  region  = "us-east-2"
  profile = "philip"
}

provider "aws" {
  region  = "us-east-1"
  alias   = "aws_USE1"
  profile = "philip"
}

provider "aws" {
  region  = "sa-east-1"
  alias   = "aws_SAE1"
  profile = "philip"
}
provider "aws" {
  region  = "af-south-1"
  alias   = "aws_AFS1"
  profile = "philip"
}

provider "aws" {
  region  = "ap-northeast-3"
  alias   = "aws_APNE3"
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

#resource "aws_spot_instance_request" "ohio-micro-amazon" {
#  count         = var.quantities.USE2.micro.amazon
#  ami           = var.config.USE2.amis.amazon_linux
#  user_data     = file("../ec2/bootstrap.sh")
#  instance_type = var.instance_types.micro
#  spot_price    = "0.04"
#  key_name      = var.config.USE2.key_name
#
#   This has no observable effect in spot.
#  tags = {
#    Name = "ohio-micro-amazon"
#
#  }
#}

#resource "aws_spot_instance_request" "ohio-micro-ubuntu" {
#  count         = var.quantities.USE2.micro.ubuntu
#  ami           = var.config.USE2.amis.ubuntu_amd
#  user_data     = file("../ubuntu/bootstrap.sh")
#  instance_type = var.instance_types.micro
#  spot_price    = "0.04"
#  key_name      = var.config.USE2.key_name
#
#   This has no observable effect in spot.
#  tags = {
#    Name = "ohio-micro-ubuntu"
#
#  }
##}
#
#resource "aws_spot_instance_request" "ohio-large-amazon" {
#  count     = var.quantities.USE2.large.amazon
#  ami       = var.config.USE2.amis.amazon_linux
#  user_data = file("../ec2/bootstrap.sh")
#
#  instance_type = var.instance_types.large
#  spot_price    = "0.08"
#  key_name      = var.config.USE2.key_name
#}
#
#resource "aws_spot_instance_request" "ohio-c6a-large-ubuntu" {
#  count     = var.quantities.USE2.c6a-large.ubuntu
#  ami       = var.config.USE2.amis.ubuntu_amd
#  user_data = file("../ubuntu/bootstrap.sh")
#
#  instance_type = var.instance_types.c6a-large
#  spot_price    = "0.08"
#  key_name      = var.config.USE2.key_name
#}
#
#resource "aws_spot_instance_request" "ohio-c6a-large-amazon" {
#  count     = var.quantities.USE2.c6a-large.amazon
#  ami       = var.config.USE2.amis.amazon_linux
#  user_data = file("../ec2/bootstrap.sh")
#
#  instance_type = var.instance_types.c6a-large
#  spot_price    = "0.08"
#  key_name      = var.config.USE2.key_name
#}

resource "aws_spot_instance_request" "virginia-micro" {
  provider      = aws.aws_USE1
  count         = var.quantities.USE1.micro.ubuntu
  ami           = var.config.USE1.amis.ubuntu_amd
  instance_type = var.instance_types.micro
  spot_price    = "0.04"
  key_name      = var.config.USE1.key_name
  user_data     = file("startup.sh")
}

resource "aws_spot_instance_request" "virginia-large" {
  provider      = aws.aws_USE1
  count         = var.quantities.USE1.large.ubuntu
  ami           = var.config.USE1.amis.ubuntu_amd
  instance_type = var.instance_types.large
  spot_price    = "0.10"
  key_name      = var.config.USE1.key_name
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  user_data = file("startup.sh")
  tags      = {
    Name = "virginia-m5.large"

  }
}
resource "aws_spot_instance_request" "cape-town-micro-ubuntu" {
  provider      = aws.aws_AFS1
  count         = var.quantities.AFS1.micro.ubuntu
  ami           = var.config.AFS1.amis.ubuntu_amd
  user_data     = file("../ubuntu/bootstrap.sh")
  instance_type = var.instance_types.t3-micro
  spot_price    = "0.04"
  key_name      = var.config.AFS1.key_name
}

## The experiment
locals {

  UBUNTU = {
    ami       = var.config.USE2.amis.ubuntu_amd
    user_data = file("../ubuntu/bootstrap.sh")
  }
  AMAZON-LINUX = {
    ami       = var.config.USE2.amis.amazon_linux
    user_data = file("../ec2/bootstrap.sh")
  }
  CPYTHON-UBUNTU = {
    ami       = "ami-0dfb45ab9e11120c3"
    user_data = null
  }
  MICRO = {
    instance_type = var.instance_types.micro
    spot_price    = "0.01"
  }
  C6A-LARGE = {
    instance_type = "c6a.large"
    spot_price    = "0.09"
  }
  C6A-XLARGE = {
    instance_type = "c6a.xlarge"
    spot_price    = "0.10"
  }

  # for_each experiments
  # Trying to make these into separate "variable" blocks didn't work because of
  # "Variables may not be used here" so I need to work on refactoring a bit more.

  ohio_instances = {
    "ubuntu-large-01" = {
      image = local.CPYTHON-UBUNTU
      type  = local.C6A-XLARGE
    }
    "ubuntu-large-02" = {
      image = local.UBUNTU
      type  = local.C6A-LARGE
    }
#    "ubuntu-micro-02" = {
#      image = local.UBUNTU
#      type  = local.MICRO
#    }
#    "amazon-micro-01" = {
#      image = local.AMAZON-LINUX
#      type  = local.MICRO
#    }
  }
#  other_region_instances = {
#    # This is not yet functional!!!
#    # The idea is that I use USE2 so much that there
#    # is no need to force an explicit custom AWS provider. However I like to play
#    # around with other regions at times, so here we need to construct the appropriate
#    # metadata.
#    "ubuntu-micro-01" = {
#      # Somehow we'll use this to look up AMI and region name
#      region = "USE1"
#      image  = local.UBUNTU
#      type   = local.MICRO
#    }
#  }
}

resource "aws_spot_instance_request" "ohio-generic" {
  for_each      = local.ohio_instances
  //noinspection HILUnresolvedReference   # PyCharm doesn't like this syntax.
  ami           = each.value.image.ami
  //noinspection HILUnresolvedReference
  user_data     = each.value.image.user_data
  //noinspection HILUnresolvedReference
  instance_type = each.value.type.instance_type
  //noinspection HILUnresolvedReference
  spot_price    = each.value.type.spot_price
  key_name      = var.config.USE2.key_name

  # See https://stackoverflow.com/a/61632322 -- should block, but should produce ID
  wait_for_fulfillment = true
}

resource "aws_spot_instance_request" "ohio-special" {
  # It's unclear to me why this wouldn't start when I copied over the various locals,
  # but anyway, it starts with more hardcoded values.
  count = 0
  ami           = "ami-02b8534ff4b424939"   #Red Hat
#  user_data     = local.AMAZON-LINUX.user_data
  user_data = file("../ec2/bootstrap.sh")
#  instance_type = local.C6A-LARGE.instance_type
  instance_type = "m6a.large"
#  spot_price    = local.C6A-LARGE.spot_price
  spot_price = "0.15"
  key_name      = var.config.USE2.key_name
}

resource "aws_spot_instance_request" "other-region-generic" {
  for_each      = {}
  //noinspection HILUnresolvedReference   # PyCharm doesn't like this syntax.
  ami           = each.value.image.ami
  //noinspection HILUnresolvedReference
  user_data     = each.value.image.user_data
  instance_type = var.instance_types.micro
  spot_price    = "0.04"
  key_name      = var.config.USE2.key_name
}

output "instances" {
  value = {
    ohio-generic : aws_spot_instance_request.ohio-generic.*
    ohio-special : aws_spot_instance_request.ohio-special.*.public_ip
    #    cape-town-micro-ubuntu : aws_spot_instance_request.cape-town-micro-ubuntu.*.private_ip
  }
  description = "PrivateIP address details"
}

