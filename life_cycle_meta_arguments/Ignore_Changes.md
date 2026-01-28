### LifeCycle Meta-Argument - Ignore Changes

```sh
resource "local_file" "foo" {
  content  = "test"
  filename = "${path.module}/hello_file"
  lifecycle {
    ignore_changes = [content,filename]
  }
}

```
```sh
$ terraform apply --auto-approve
local_file.foo: Refreshing state... [id=75941a16d5a6ada8e3d7f6facbebf4ab0c3a2ba4]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```
