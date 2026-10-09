variable "aws_region" {
<<<<<<< HEAD
  type        = string
  description = "AWS region to deploy into"
  default     = "ca-central-1"
}

variable "ami_id" {
  type        = string
  description = "AMI ID to use for the instance"
  default     = " ami-0b965098075392d98"
=======
  description = "AWS Region"
  type        = string
  default     = "ca-central-1"
}

#Fix the VPC ID
variable "vpc_id" {
  type        = string
  description = "VPC ID to launch resources into"
  default = "vpc-08f4434d3f2ebccbd"
}


# Define the subnet ID variable
variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
  #default     = "subnet-029d30fb48dda62ee"
>>>>>>> 6e496b1 (first commit)
}

variable "instance_type" {
  type        = string
<<<<<<< HEAD
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "EC2 Key pair name"
  default = "dhevan"
=======
  default     = "t3.micro"
}

# Declare the AMI ID variable
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-02bcdd2c1673f8635" # Replace with a valid AMI ID for your region
}



#Fix the Invalid Key Pair Name
variable "key_name" {
  type        = string
  description = "EC2 Key pair name"
  default = "devops"
>>>>>>> 6e496b1 (first commit)
}

variable "environment" {
  type    = string
  default = "dev"
}

<<<<<<< HEAD
variable "vpc_id" {
  type        = string
  description = "VPC ID to launch resources into"
  default = "vpc-0d5d4b0f4e6f895ad"
}

variable "subnet_id" {
  type        = string
  description = "Subnet within the selected VPC"
}

variable "ssh_cidr" {
  type        = string
  description = "Your public IP address in CIDR notation"
}
=======


>>>>>>> 6e496b1 (first commit)
