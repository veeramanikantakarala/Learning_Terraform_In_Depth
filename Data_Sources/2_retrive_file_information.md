

### data-source-02.tf

```sh
  provider "aws" {
  }
  
  # 2. Reads a file from the local filesystem.
  data "local_file" "foo" {
    filename = "${path.module}/foo.bar"
  }
  
  output "local_file_read" {
    value = data.local_file.foo.content
  }
```
