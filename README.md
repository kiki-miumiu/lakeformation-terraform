# terraform-boilerplate

## Usage
```
cd terraform
terraform init --backend-config=env/dev01_SD000_001.conf
terraform plan --var-file=env/dev01_SD000_001.tfvars
```

## Configuration
add following to ~/.terraformrc or ./terraform/config.tfrc
```
provider_installation {
    direct {
        exclude = ["registry.terraform.io/*/*"]
    }
    network_mirror {
        url = "https://artifactory.internal.cba/artifactory/api/terraform/io.terraform.registry/providers/"
    }
}
```