terraform {
  backend "s3" {
    bucket = "sonyawsdev"
    key    = "sony/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-statelock-dynamo" # DynamoDB table used for state locking, note: first run "day-5-resources-s3-dynamodb-for-statefile" to create s3 and dynamodb resources
    encrypt        = true  # Ensures the state is encrypted at rest in S3.
  }
}