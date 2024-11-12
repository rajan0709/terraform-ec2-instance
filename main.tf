# main.tf

# Provider Configuration
provider "aws" {
  region = "us-west-2"  # Replace with your preferred AWS region
}

# Security Group for EC2 instance
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH access"

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
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2_instance" {
  ami             = "ami-0c55b159cbfafe1f0"  
  instance_type   = "t2.micro"              
  key_name        = "my-key-pair"            
  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "MyEC2Instance"
  }

  monitoring = true
  associate_public_ip_address = true
}
