

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

resource "local_file" "foo_value" {
  for_each = tomap(var.example_map)
  content  = "helloworld"
  filename = each.value
}
```

### terraform plan
```sh
$ terraform plan 
 # local_file.foo_key["key1"] will be created
  + resource "local_file" "foo_key" {
      + filename             = "key1"
    }
  # local_file.foo_key["key2"] will be created
  + resource "local_file" "foo_key" {
      + filename             = "key2"
    }
  # local_file.foo_key["key3"] will be created
  + resource "local_file" "foo_key" {
      + filename             = "key3"
    }
  # local_file.foo_value["key1"] will be created
  + resource "local_file" "foo_value" {
      + filename             = "value1"
    }
  # local_file.foo_value["key2"] will be created
  + resource "local_file" "foo_value" {
      + filename             = "value2"
    }
  # local_file.foo_value["key3"] will be created
  + resource "local_file" "foo_value" {
      + filename             = "value3"
    }
Plan: 6 to add, 0 to change, 0 to destroy.
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
