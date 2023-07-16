terraform {
  source = "."
}

inputs = {
  bucket_name = "terragrunt-hello-world-poc"
  workspace = terraform.workspace
}
