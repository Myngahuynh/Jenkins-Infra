provider "aws" {
  region = "ap-southeast-1"
}

# First EC2 instance (first_EC2)
resource "aws_instance" "first_EC2" {
  ami           = "ami-047126e50991d067b"  # Ensure this AMI is available in the region
  instance_type = "t2.micro"               # Type of EC2 instance
  tags = {
    Name = "first_EC2"
  }
}


# Second EC2 instance (second_EC2)
resource "aws_instance" "second_EC2" {
  ami           = "ami-047126e50991d067b"  # Can use the same or different AMI
  instance_type = "t2.micro"               # You can specify a different instance type here
  tags = {
    Name = "second_EC2"
  }
}