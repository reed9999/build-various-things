# Terraform README

Ideally I'd like to attach the role automatically but IAM roles for EC2 are surprisingly complex in TF
I tried some of the following, but created a jammed up role resource that then refused to go away because 
the path wouldn't pass validation. Or was it that the profile wouldn't go away? Hmmm.

```terraform
# This stuff has gotten out of hand... maybe just do this manually for the moment?

# resource "aws_iam_role" "ec2-s3-build" {
 # name = "ec2-s3-build"
 # path = "arn:aws:iam::226724366601:role/ec2-s3-build"
 # assume_role_policy = ""
# }

# resource "aws_iam_instance_profile" "build-profile" {
  # name = "build-profile" 
  # role = aws_iam_role.ec2-s3-build
# }
```


See here for bootstrap file info.
https://stackoverflow.com/questions/61310771/how-do-i-bootstrap-ec2-instance-with-an-external-script-file-in-terraform
