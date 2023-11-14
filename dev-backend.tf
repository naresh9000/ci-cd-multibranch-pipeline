terraform {
  required_version = "<= 1.6.3" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "terraform-dev-slave"
    key    = "terraform-dev-slave"
    region = "ap-south-1"
    #dynamodb_table = "devopsb25-terraform-state-lock-dynamo"
    #encrypt        = true
  }
}
