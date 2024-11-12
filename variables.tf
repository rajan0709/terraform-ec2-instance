# variables.tf

variable "region" {
  description = "The AWS region to deploy the EC2 instance"
  default     = "us-west-2"  # Default region
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"  # Default instance type
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Default AMI (Amazon Linux 2)
}

variable "key_name" {
  description = "SSH key pair name"
  default     = "my-key-pair"  # Replace with your SSH key
}
