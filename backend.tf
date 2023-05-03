# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "credence-terraform-state-file"
    key            = "moloko-demo//terraform.tfstate"
    region         = "us-east-1"
    profile        = "Moloko"
    dynamodb_table = "terraform-state-lock"
  }
}