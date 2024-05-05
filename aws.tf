
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

# Create an EC2 instance resource
resource "aws_instance" "web_server" {
  ami           = "ami-07caf09b362be10b8" # AMI ID for your chosen image
  instance_type = "t2.micro"              # Instance type
  tags = {
    Name = "Web Server"
  }
}
locals {
  instance_names = ["Instance1", "Instance2", "Instance3", "Instance4", "Instance5", "Instance6", "Instance7", "Instance8", "Instance9", "Instance10"]
}

// Create instances using count and element function
resource "aws_instance" "example_instance" {
  count         = 10                      // create 10 instances
  ami           = "ami-07caf09b362be10b8" // specify the AMI ID
  instance_type = "t2.micro"              // specify the instance type
  tags = {
    Name = local.instance_names[count.index] // unique name for each instance
  }
}
