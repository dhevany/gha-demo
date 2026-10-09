<<<<<<< HEAD
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

=======
resource "aws_instance" "devops_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  #Ensure the Security Group is Attached
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
>>>>>>> 6e496b1 (first commit)
  tags = {
    Name = "${var.environment}-server"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "${var.environment}_sg"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id
<<<<<<< HEAD

=======
#Correct the Security Group CIDR Block
>>>>>>> 6e496b1 (first commit)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
