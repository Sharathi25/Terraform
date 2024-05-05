

resource "aws_instance" "example" {
  ami           = "ami-07caf09b362be10b8" // Specify the ID of the AMI you want to use
  instance_type = "t2.micro"              // Specify the instance type

  // Specify the key pair name used to SSH into the instance
  key_name = "Ansible"

  // Specify the networking configuration
  subnet_id       = "subnet-02bafd75d3634e2fc" // Specify the ID of the subnet
  security_groups = ["launch-wizard-1"]        // Specify the ID of the security group

  // Optional tags for the instance
  tags = {
    Name        = "ExampleInstance"
    Environment = "Production"
  }
}
