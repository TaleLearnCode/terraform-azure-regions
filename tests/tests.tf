terraform {
  required_providers {
  }
}

module "azure_regions" {
  #source      = "../"
  source       = "github.com/TaleLearnCode/terraform-azure-regions"
  azure_region = "eastus2"
}

output "region" {
  value = module.azure_regions.region
}

output "paired_region" {
  value = module.azure_regions.paired_region
}