variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair Name"
  type        = string
  default     = "docker-key"
}

variable "github_repo" {
  description = "GitHub Repository URL"
  type        = string
  default     = "https://github.com/Sarthak-Thete/Docker_Assignment.git"
}