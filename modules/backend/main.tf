# S3 bucket
resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }
    tags = {
        Name = "TerraformState"
    }
}

#dynamodb_table
resource "aws_dynamodb_table" "terraform-lock" {
    name           = var.dynamodbTable_name
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        "Name" = "TerraformStateLockTable"
    }
}