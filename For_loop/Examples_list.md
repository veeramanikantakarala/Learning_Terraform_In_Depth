

### List of filenames

```sh
variable "filename_list" {
  type = list(string)
  default = ["./file_a.txt","./file_b.txt","./file_b.txt"]
}
```

### for_each with list
```sh
variable "filename_list" {
  type = list(string)
  default = ["./file_a.txt","./file_b.txt","./file_b.txt"]
}
```
### Note: The given "for_each" argument value is unsuitable: the "for_each" argument must be a map, or set of strings, and you have provided a value of type │ list of string.

### for_each with list
```sh
resource "local_file" "foo" {
  for_each = toset(var.filename_list)
  content  = "helloworld"
  filename = each.value #(or) each.key
}
```

### terraform apply output
```sh
$ terraform apply 
local_file.foo["./file_a.txt"]: Creating...
local_file.foo["./file_b.txt"]: Creating...
local_file.foo["./file_a.txt"]: Creation complete after 0s [id=6adfb183a4a2c94a2f92dab5ade762a47889a5a1]
local_file.foo["./file_b.txt"]: Creation complete after 0s [id=6adfb183a4a2c94a2f92dab5ade762a47889a5a1]
Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```


### terraform plan and console 
```sh
> local_file.foo["./file_a.txt"].filename
"./file_a.txt"
> local_file.foo["./file_b.txt"].filename
"./file_b.txt"
```
