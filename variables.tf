variable "aws_region" {
  type        = string
  description = "AWS region where infrastructure resources will be provisioned"
  default     = "us-east-1"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster and prefix for associated resources"
  default     = "emeraldflow-eks-cluster"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for the two public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "List of Availability Zones for the public subnets"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "node_instance_types" {
  type        = list(string)
  description = "EC2 instance types for the EKS managed node group"
  default     = ["t3.small"]
}

variable "node_desired_size" {
  type        = number
  description = "Desired number of worker nodes in the node group"
  default     = 2
}

variable "node_min_size" {
  type        = number
  description = "Minimum number of worker nodes in the node group"
  default     = 2
}

variable "node_max_size" {
  type        = number
  description = "Maximum number of worker nodes in the node group"
  default     = 3
}
