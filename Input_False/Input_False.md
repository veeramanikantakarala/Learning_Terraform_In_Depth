

### input_equals_false.tf

```sh
  # Importance of Input=False
  resource "local_file" "foo" {
    content  = var.local_file_content
    filename = "${path.module}/foo.bar"
  }
  
  variable "local_file_content" {
  }
```

```sh
## Output
$ terraform plan -input=false
╷
│ Error: No value for required variable
│
│   on main.tf line 14:
│   14: variable "local_file_content" {
│
│ The root module input variable "local_file_content" is not set, and has no default value. Use a -var or -var-file command line argument to provide a 
│ value for this variable.
```
