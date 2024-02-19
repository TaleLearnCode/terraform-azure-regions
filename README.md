# Azure Regions Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)


This module provides Azure region information for a specified Azure region. Included in the output is the name, short name, CLI identifier, and resource name region component of the specified region. The output also includes the same information for the region paired with the specified region (for example, if specifying North Central US then the informaiton for South Central US will be included).

Please refer to [REGIONS.md](REGIONS.md) for a list of supported regions.

## Usage

```hcl
module "azure_regions" {
	source = "github.com/TaleLearnCode/terraform-azure-regions"
	azure_region = "northcentralus"
}
```

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azure\_region | The Azure region to get information for. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| region | Azure region name in standard format. |
| region_short | Azure region in short format for resource naming purposes. |
| region_cli | Azure region in CLI name format.|
| region_identifier | The identifier for the Azure region. |
| paired_region | Azure paired region with the current one. All formats available as attributes. <pre>object({<br>  region (string): Azure paired region in standard format.<br>  region_short (string): Azure paired region in short format for resource naming purposes.<br>  region_cli_(string): Azure paired region in CLI name format. <br>  region_identifier (string): The identifier for the paired Azure region.<br>})</pre> |