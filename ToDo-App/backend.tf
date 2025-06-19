terraform {
  backend "s3" {
    bucket = "eks-terra-bucket-09849"
    key    = "backend/ToDo-App.tfstate"
    region = "us-east-1"
  #  dynamodb_table = "dynamoDB-terra"
    use_lockfile = true
  }
}