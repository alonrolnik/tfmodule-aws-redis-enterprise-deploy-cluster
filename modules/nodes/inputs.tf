#### AMI for Nodes
#### find the latest ami for ubuntu 22.04 LTS x86 server
#### Updated to use Ubuntu 22.04 LTS (Jammy Jellyfish) - latest Redis Enterprise supported version

# Ubuntu 22.04 LTS (Jammy Jellyfish) - using dynamic lookup for latest version
# Pattern: ubuntu/images/hvm-ssd-gp3/ubuntu-jammy-22.04-amd64-server-*
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "ubuntu-jammy-22.04-amd64-server-.*"
  # This is Canonical's ID (find here: https://ubuntu.com/server/docs/cloud-images/amazon-ec2)
  owners = ["099720109477"]

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "ena-support"
    values = [var.ena-support]
  }
}