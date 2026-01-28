

### Map of key,values

```sh
variable "example_map" {
  type    = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}
```

### for_each with map
```sh
resource "local_file" "foo_key" {
  for_each = tomap(var.example_map)
  content  = "helloworld"
  filename = each.key
}
```

### terraform apply output
```sh
$ terraform apply 
local_file.foo_1["key2"]: Creation complete after 0s [id=6adfb183a4a2c94a2f92dab5ade762a47889a5a1]
local_file.foo_1["key1"]: Creation complete after 0s [id=6adfb183a4a2c94a2f92dab5ade762a47889a5a1]
local_file.foo_1["key3"]: Creation complete after 0s [id=6adfb183a4a2c94a2f92dab5ade762a47889a5a1]
Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```


### terraform console 
```sh
> local_file.foo_key
{
  "key1" = {
    "content" = "helloworld"
    "filename" = "value1"
  }
  "key2" = {
    "content" = "helloworld"
    "filename" = "value2"
  }
  "key3" = {
    "content" = "helloworld"
    "filename" = "value3"
  }
}
```
