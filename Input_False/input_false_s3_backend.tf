### s3_backend.tf

```sh
terraform {
  backend "s3" {
    bucket = "test-bucket"
    region = "us-west-2"
  }
}
```


```sh
$ terraform init -input=false
Initializing the backend...
╷
│ Error: Missing Required Value
│
│   on main.tf line 18, in terraform:
│   18:   backend "s3" {
│
│ The attribute "key" is required by the backend.
│
│ Refer to the backend documentation for additional information which attributes are required.
```
