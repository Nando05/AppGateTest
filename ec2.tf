resource "aws_instance" "web1" {
    # Assign Instane type
    instance_type = "t3.micro"
    # Select AMI image
    ami = "ami-071df81306b3fde98"
    # Select VPC (Global)
    subnet_id = "subnet-00ace9237b4d7b0ad"
}    

provider "aws" {
    region = "us-west-2"
}
