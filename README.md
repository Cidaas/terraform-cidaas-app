# Terraform Cidaas App Module

This Terraform module manages clients/apps in your Cidaas instance.

## Features

- Creates and manages applications.
- Supports common configuration for multiple apps.

## Requirements

- Terraform >= 1.1.0
- Cidaas Provider >= 3.3.0

## Usage

```hcl
provider "cidaas" {
  base_url = "https://cidaas.de"
}

module "cidaas_app" {
  source = "git@github.com:Cidaas/terraform-cidaas-app.git"

  providers = {
    cidaas = cidaas
  }

  # Required attributes
  client_name = "Demo App"
  client_type = "SINGLE_PAGE"
  company_name = "WidasConcepts"
  company_address = "Wimsheim"
  company_website = "https://widas.com"
  allowed_scopes = ["openid", "profile", "email"]
  redirect_uris = ["https://cidaas.de/home"]
  allowed_logout_urls = ["https://cidaas.de/logout"]

  # Optional attributes
  media_type = "IMAGE"
  allow_login_with = ["EMAIL", "MOBILE"]
}
```

## Inputs

### Required Inputs

| Name | Description | Type |
|------|-------------|------|
| client_name | The name of the application | `string` |
| client_type | The type of client (SINGLE_PAGE, REGULAR_WEB etc.) | `string` |
| company_name | Company name associated with the app | `string` |
| company_address | Company address | `string` |
| company_website | Company website URL | `string` |
| allowed_scopes | List of allowed scopes | `set(string)` |
| redirect_uris | List of allowed redirect URIs | `set(string)` |
| allowed_logout_urls | List of allowed logout URLs | `set(string)` |

### Optional Inputs

The module has multiple optional attributes. See the `variables.tf` file for the complete list of supported variables.

## Outputs

See the `outputs.tf` file for the complete list of available outputs.

## Common Configurations

You can use the `common_configs` variable to define shared configurations that can be reused across multiple apps.

```hcl
common_configs = {
  client_type = "SINGLE_PAGE"
  company_name = "WidasConcepts"
  allowed_scopes = ["openid", "profile", "email"]
}

module "cidaas_app" {
  source = "git@github.com:Cidaas/terraform-cidaas-app.git"
  
  client_name = "Demo App"
  common_configs = common_configs
  
  # To override a specific attribute from the common_configs
  client_type = "IOS
}
```

See the `example` folder for detailed configuration of the attribute `common_configs`.
