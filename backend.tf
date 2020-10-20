terraform {
  backend "s3" {
    bucket          = "samples3forsnow"
    key             = "global/ntier/terraform.tfstate"
    region          = "us-east-1"

    dynamodb_table  = "terraformtable"
  }
}