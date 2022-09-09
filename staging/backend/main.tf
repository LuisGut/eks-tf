module "backend" {
  source = "../../modules/backend"
  bucket_name        = var.bucket_name
  dynamodbTable_name = var.dynamodbTable_name
}
