

### Variable List

```sh
variable "example_list" {
  type    = list(string)
  default = ["apple", "beetroot", "carrot","carrot"]
}
```

### terraform console 
```sh
> var.example_list
tolist([
  "apple",
  "beetroot",
  "carrot",
  "carrot",
])
> var.example_list[0]
"apple
```

### Variable Map

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

### terraform console 
```sh
> var.example_map
tomap({
  "key1" = "value1"
  "key2" = "value2"
  "key3" = "value3"
})
> var.example_map["key1"]
"value1"
```

### Variable Set

```sh
variable "example_set" {
  type    = set(string)
  default = ["foo", "bar", "baz","baz"]
}
```

### terraform console 
## Note that sets are unordered, so the order may appear alphabetical but is not guaranteed.
```sh
> var.example_set
toset([
  "bar",
  "baz",
  "foo",
])
# Convert a set to a list to access elements by index:
> tolist(var.example_set)[0]
"bar"
```

### Variable Object

```sh
variable "example_object" {
  type = object({
    name    = string
    age     = number
    active  = bool
    regions = list(string)
  })
  default = {
    name    = "Terraform"
    age     = 5
    active  = true
    regions = ["us-east-1", "us-west-2"]
  }
}
```

### terraform console 
```sh
> var.example_object
{
  "active" = true
  "age" = 5
  "name" = "Terraform"
  "regions" = tolist([
    "us-east-1",
    "us-west-2",
  ])
}
Access attributes using dot notation:

> var.example_object.name
"Terraform"

Access nested list elements:

> var.example_object.regions[1]
"us-west-2"
```
