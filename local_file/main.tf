terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/Users/apasham/.aws/credentials"
    profile = "admin"
}

resource "local_file" "school" {
    filename = "/Users/apasham/Downloads/school.txt"
    content = "Sacred Heart High School"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0a01a5636f3c4f21c"
    instance_type = "t2.micro"

    tags = {
        Name = "My Terraform EC2 Instance"
        Environment = "development"
    }
}

resource "aws_s3_bucket" "data_bucket" {
    bucket = "gwen-stacy-11-sept-2021"
    acl = "private"

    tags = {
        Name = "My Terraform Bucket"
        Environment = "development"
    }
}
