# Vultr Instance Terraform Module

The following project gets up an instance on the Vultr service provider with a terraform module.

## Requisites

You need the following requisites

- terraform +12

## How do you use it

```bash
git clone https://github.com/nchgroup/terraform_vultr
cd terraform_vultr
terraform init
```

### Change your variables

```bash
mv terraform.tfvars.example terraform.tfvars
```

### Deploy

```bash
terraform plan
terraform apply
```

### Export your APIKEY

```bash
export TF_VAR_api_key="PUT_YOUR_APIKEY"
```
# Author
* ksha - https://twitter.com/ksha - https://github.com/vickimgore
