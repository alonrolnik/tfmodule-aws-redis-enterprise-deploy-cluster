#### AMI for Nodes
#### find the latest ami for ubuntu 24.04 LTS x86 server
#### Updated to use Ubuntu 24.04 LTS (Noble Numbat) for better security and support

# Ubuntu 24.04 LTS (Noble Numbat) - using dynamic lookup for latest version
# Pattern: ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "ubuntu\\/images\\/hvm-ssd-gp3\\/ubuntu-noble-24.04-amd64-server-.*"
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