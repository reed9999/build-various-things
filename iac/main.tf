terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"
  # region = "us-east-1"
}

data "template_file" "bootstrap" {
  # template = "${file("${path.cwd}/../ec2/boostrap.sh")}"
  template = file("../ec2/bootstrap.sh")
}

# make this one an instance to troubleshoot user_data
resource "aws_instance" "ohio-023-instance" {
  count = 0
  ami           = "ami-0103f211a154d64a6" # us-east-2
  instance_type = "t3.micro"
  key_name      = "2023-build-ohio"
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  # I've tried many approaches to no avail. See also 
  # https://stackoverflow.com/questions/51882030/commands-in-user-data-are-not-executed-in-terraform
  # https://stackoverflow.com/questions/68180823/terraform-only-runs-the-first-part-of-multi-part-user-data
  user_data = <<HERE
  !#/bin/sh
  echo FIRST > ~/first.txt ; sleep 10 s ; echo SECOND > /home/ec2-user/second.txt
HERE
  tags = {
    Name = "ohio-023-t2.micro"

  }

}
resource "aws_spot_instance_request" "ohio-amzn-linux-instance" {
  count         = 1
  ami           = "ami-0103f211a154d64a6" # us-east-2
  instance_type = "t3.nano"
  spot_price =  "0.10"
  key_name      = "2023-build-ohio"
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  # user_data = data.template_file.bootstrap.rendered
  user_data = <<SSS
#!/usr/bin/sh
touch ~/xyz ; echo 'HELLO PHILIP' > ~/hello_philip.txt
SSS
  tags = {
    Name = "ohio-amzn-linux-instance"

  }
}

resource "aws_spot_instance_request" "virginia-001-instance" {
  count         = 0
  ami           = "ami-06e46074ae430fba6" # Amazon Linux
  instance_type = "m5.large"    # Which seems to be about the price of xlarge in Ohio on a Wed afternoon....
  spot_price =  "0.10"
  key_name      = "2023-virginia-build"
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  # user_data = data.template_file.bootstrap.rendered
  user_data = "touch ~/xyz ; echo 'HELLO PHILIP' > ~/hello_philip.txt"
  tags = {
    Name = "virginia-m5.large-perftest"

  }
}

resource "aws_spot_instance_request" "ohio-spot-ubuntu" {
  count         = 0
  ami           = "ami-0a695f0d95cefc163" # us-east-2 Ubuntu
  instance_type = "m5.large"    # Which seems to be about the price of xlarge in Ohio on a Wed afternoon....
  spot_price =  "0.10"
  key_name      = "2023-build-ohio"
  # iam_instance_profile = aws_iam_instance_profile.build-profile.name

  # user_data = data.template_file.bootstrap.rendered
  user_data = "#!/bin/sh\ntouch ~/xyz ; echo HELLO PHILIP > ~/hello_philip.txt"
  tags = {
    Name = "ohio-024-m5.large-ubuntu"

  }
}

# Alternative approach since userdata is failing on the multipart thing. 
# See https://stackoverflow.com/questions/62101009/terraform-copy-upload-files-to-aws-ec2-instance
data "cloudinit_config" "example" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/cloud-config"
    filename     = "cloud-config.yaml"
    content      = local.cloud_config_config
  }

  part {
    content_type = "text/x-shellscript"
    filename     = "example.sh"
    content  = <<-EOF
      #!/bin/bash
      echo "Hello World"
  EOF
  }
}