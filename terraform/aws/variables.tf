variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-1"
}

variable "tags" {
  description = "A map of tags to apply to resources."
  type        = map(string)
  default = {
    Org         = "Particle41"
    ManagedBy   = "terraform"
    Environment = "dev"
  }
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "STS"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "172.1.0.0/16"
}

variable "container_image" {
  description = "Docker Hub image for the application"
  type        = string
  default     = "myuser/simple-time-service:latest"
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 8080
}

variable "task_cpu" {
  description = "CPU units for the ECS task"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memory for the ECS task"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 1
}

variable "health_check_path" {
  description = "Health check path for the ALB target group"
  type        = string
  default     = "/"
}
