terraform {
  backend "s3" {
    bucket         = "mytodobucket444"
    key            = "terraform/backend"
    region         = "us-west-2"
    dynamodb_table = "remote-backend"
  }
}