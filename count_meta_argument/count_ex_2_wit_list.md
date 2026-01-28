

### Count Meta Argument with list

```sh

variable "filename_list" {
  type = list(string)
  default = ["./file_a.txt","./file_b.txt","./file_c.txt","./file_d.txt","./file_e.txt"]
}

resource "local_file" "foo" {
  count    = 3
  content  = "helloworld"
  filename = var.filename_list[count.index]
}
```

### terraform plan output
```sh
$ terraform plan 
  # local_file.foo[0] will be created
  # local_file.foo[1] will be created
  # local_file.foo[2] will be created
Plan: 3 to add, 0 to change, 0 to destroy.
```

### terraform console 
```sh
> local_file.foo.0.filename
"./file_a.txt"
> local_file.foo.1.filename
"./file_b.txt"
> local_file.foo.2.filename
"./file_c.txt"
```
