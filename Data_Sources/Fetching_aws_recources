

### data-source-01.tf

```sh
  provider "aws" {
  }
  
  # 1.1 Data Source Block : Fetching the list of EC2 running instances 
  data "aws_instances" "test" {
  }
  
  output "ec2_ids_list" {
    value = data.aws_instances.test.ids
  }
  
  # 1.2 Data Source Block : Fetching the list of EIPs
  data "aws_eips" "test" {
  }
  
  output "eips_list" {
    value = data.aws_eips.test.public_ips
  }
  
  # 1.3 Data Source Block : Fetching the s3 bucket details
  data "aws_s3_bucket" "test" {
    bucket = "21021test"
  }
  
  output "s3_bucket_name" {
    value = data.aws_s3_bucket.test.arn
  }

```
