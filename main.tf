#provider "aws" {
#    region  = "us-east-1"
#}

provider "aws" {
    region  = var.AWS_REGION
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_ACCESS_KEY
}


#provider "aws" {
#  region  = "us-east-1"
#  shared_credentials_file = " /root/.aws/credentials"
#  profile                 = "terraProfile"

#}

resource "aws_vpc" "VPC_challange1" {
    cidr_block = "192.168.0.0/24"
    tags = {
        Name="TerraformVPC"
    } 
}
