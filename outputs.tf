# outputs.tf

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_ec2_instance.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.my_ec2_instance.public_ip
}
