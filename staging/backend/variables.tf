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
