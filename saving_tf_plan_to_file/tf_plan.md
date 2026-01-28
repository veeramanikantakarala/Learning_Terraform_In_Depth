

### Plan to a file
```sh
resource "local_file" "foo" {
  content  = "helloworld"
  filename = "${path.module}/new_file"
}
```

### By using -out flag
```sh
$ terraform plan -out tf.plan
$ terraform apply "tf.plan"
```

### binary file: we can see using terraform show command
```sh
$ terraform show 
$ terraform show --json tf.plan | jq
```
