output "key_pair" {
    description = "EC2 Key Pair Name"
    value       = aws_key_pair.key-pair.key_name
  
}