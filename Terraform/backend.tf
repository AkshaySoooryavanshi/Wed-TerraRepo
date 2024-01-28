terraform {
  backend "s3" {
    bucket         = "cicdawsbucket" # Created & Versioning Enabled Manually. made change
    key            = "terraform.tfstate"   # path and name of state file.
    region         = "eu-west-2"
   # dynamodb_table = "state_table" # name of dynamodb table for State Lock, must have partition key = "LockID"
    # encrypt = true # by default
  }
}
