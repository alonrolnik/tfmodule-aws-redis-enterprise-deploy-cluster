#### Required Variables

variable "ssh_key_name" {
    description = "name of ssh key to be added to instance"
}

variable "ssh_key_path" {
    description = "name of ssh key to be added to instance"
}

#### VPC
variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "vpc_name" {
  description = "The VPC Project Name tag"
}

############## Redis Enterprise Nodes Variables

#### RE Software download url (Compatible with Ubuntu 22.04 LTS)
#### example: re_download_url = "https://s3.amazonaws.com/redis-enterprise-software-downloads/7.22.0/redislabs-7.22.0-95-jammy-amd64.tar"
variable "re_download_url" {
  description = "re download url"
  default     = ""
}

#### how many data nodes, 3 minimum
variable "data-node-count" {
  description = "number of data nodes"
  default     = 3
}

variable "aws_eips" {
  description = "list of eips"
  default     = []
}