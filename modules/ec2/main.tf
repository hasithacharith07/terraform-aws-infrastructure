# modules/ec2/main.tf

resource "aws_instance" "ssm_host" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet
  security_groups = [var.security_group_id]

  tags = {
    Name = "ssm-host"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum install -y amazon-ssm-agent
              systemctl enable amazon-ssm-agent
              systemctl start amazon-ssm-agent
              EOF
}

resource "aws_instance" "server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet
  security_groups = [var.security_group_id]

  tags = {
    Name = "server"
  }
}

