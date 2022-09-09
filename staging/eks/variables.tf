variable "profile" {
  description = "Profile"
}

variable "region" {
  description = "AWS region"
}

## Backend module##
variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "dynamodbTable_name" {
  description = "DynamoDb table name"
  type        = string
}

## EKS module##
variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "vpc_name" {
  description = "Vpc name"
}

variable "cluster_version" {
  description = "Cluster version"
}

variable "securityGroup_name" {
  description = "Security group name prefix"
}

variable "nodeGroup_name" {
  description = "Node group name"
}

variable "instance_type" {
  description = "Instance type"
}

variable "ng_minSize" {
  description = "Mix size node group"
}

variable "ng_maxSize" {
  description = "Max size node group"
}

variable "ng_desiredSize" {
  description = "Desired size node group"
}
