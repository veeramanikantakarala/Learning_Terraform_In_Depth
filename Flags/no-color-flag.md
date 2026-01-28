

### Check -no-color flag

```sh
  resource "local_file" "foo" {
    content  = "test"
    filename = "${path.module}/foo.bar"
  }

```
```sh
  $ terraform plan > tftest.plan
  $ terraform plan -no-color > tftest_no_color.plan
```
