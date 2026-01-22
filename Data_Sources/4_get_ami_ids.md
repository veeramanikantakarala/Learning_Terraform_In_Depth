

### data-source-04.tf

```sh
  provider "aws" {
  }
  
  # 4. Get Most recent Ubuntu AMI Id in specific region
  data "aws_ami_ids" "ubuntu" {
    owners = ["099720109477"]
  
    filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-*-*-amd64-server-*"]
    }
    region = "us-west-2"
  }
  
  output "aws_ami_ids" {
     value = data.aws_ami_ids.ubuntu
  }
  
  
  data "aws_ami" "example" {
    most_recent      = true
    owners = ["099720109477"]
  
    filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-*-*-amd64-server-*"]
    }
    region = "us-west-2"
  }
  
  output "aws_ami" {
     value = data.aws_ami.example
  }
```
