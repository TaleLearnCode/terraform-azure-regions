locals {
  region_identifier = lookup(zipmap(values(local.regions), keys(local.regions)), var.azure_region, lookup(zipmap(values(local.cli_names), keys(local.cli_names)), var.azure_region, var.azure_region))

  regions = {
    asia-east        = "East Asia"
    asia-south-east  = "Southeast Asia"
    aus-central-2    = "Australia Central 2"
    aus-central      = "Australia Central"
    aus-east         = "Australia East"
    aus-south-east   = "Australia Southeast"
    bra-south        = "Brazil South"
    bra-south-east   = "Brazil Southeast"
    can-central      = "Canada Central"
    can-east         = "Canada East"
    cn-east-2        = "China East 2"
    cn-east-3        = "China East 3"
    cn-east          = "China East"
    cn-north-2       = "China North 2"
    cn-north-3       = "China North 3"
    cn-north         = "China North"
    eu-north         = "North Europe"
    eu-west          = "West Europe"
    fr-central       = "France Central"
    fr-south         = "France South"
    ger-central      = "Germany Central"
    ger-north-east   = "Germany Northeast"
    ger-north        = "Germany North"
    ger-west-central = "Germany West Central"
    ind-central      = "Central India"
    ind-south        = "South India"
    ind-west         = "West India"
    isr-central      = "Israel Central"
    ita-north        = "Italy North"
    jap-east         = "Japan East"
    jap-west         = "Japan West"
    kor-central      = "Korea Central"
    kor-south        = "Korea South"
    norw-east        = "Norway East"
    norw-west        = "Norway West"
    pol-central      = "Poland Central"
    qat-central      = "Qatar Central"
    saf-north        = "South Africa North"
    saf-west         = "South Africa West"
    swe-central      = "Sweden Central"
    swe-south        = "Sweden South"
    swz-north        = "Switzerland North"
    swz-west         = "Switzerland West"
    uae-central      = "UAE Central"
    uae-north        = "UAE North"
    uk-south         = "UK South"
    uk-west          = "UK West"
    us-central       = "Central US"
    us-east-2        = "East US 2"
    us-east          = "East US"
    us-north-central = "North Central US"
    us-south-central = "South Central US"
    us-west-2        = "West US 2"
    us-west-3        = "West US 3"
    us-west-central  = "West Central US"
    us-west          = "West US"

    # Global/continental zones
    "asia"    = "Asia"
    "asia-pa" = "Asia Pacific"
    "aus"     = "Australia"
    "bra"     = "Brazil"
    "can"     = "Canada"
    "eu"      = "Europe"
    "global"  = "Global"
    "ind"     = "India"
    "jap"     = "Japan"
    "kor"     = "Korea"
    "nor"     = "Norway"
    "sgp"     = "Singapore"
    "swe"     = "Sweden"
    "uk"      = "United Kingdom"
    "us"      = "United States"
  }

  short_names = {
    "asia-east"        = "asea"
    "asia-south-east"  = "asse"
    "aus-central-2"    = "auc2"
    "aus-central"      = "auc"
    "aus-east"         = "aue"
    "aus-south-east"   = "ause"
    "bra-south"        = "brs"
    "bra-south-east"   = "brse"
    "can-central"      = "cac"
    "can-east"         = "cae"
    "cn-east-2"        = "cne2"
    "cn-east-3"        = "cne3"
    "cn-east"          = "cne"
    "cn-north-2"       = "cnn2"
    "cn-north-3"       = "cnn3"
    "cn-north"         = "cnn"
    "eu-north"         = "eun"
    "eu-west"          = "euw"
    "fr-central"       = "frc"
    "fr-south"         = "frs"
    "ger-central"      = "gce"
    "ger-north-east"   = "gne"
    "ger-north"        = "gno"
    "ger-west-central" = "gwc"
    "ind-central"      = "inc"
    "ind-south"        = "ins"
    "ind-west"         = "inw"
    "isr-central"      = "ilc"
    "ita-north"        = "itn"
    "jap-east"         = "jpe"
    "jap-west"         = "jpw"
    "kor-central"      = "krc"
    "kor-south"        = "krs"
    "norw-east"        = "noe"
    "norw-west"        = "now"
    "pol-central"      = "polc"
    "qat-central"      = "qatc"
    "saf-north"        = "san"
    "saf-west"         = "saw"
    "swe-central"      = "swec"
    "swe-south"        = "swes"
    "swz-north"        = "swn"
    "swz-west"         = "sww"
    "uae-central"      = "uaec"
    "uae-north"        = "uaen"
    "uk-south"         = "uks"
    "uk-west"          = "ukw"
    "us-central"       = "usc"
    "us-east-2"        = "use2"
    "us-east"          = "use"
    "us-north-central" = "usnc"
    "us-south-central" = "ussc"
    "us-west-2"        = "usw2"
    "us-west-3"        = "usw3"
    "us-west-central"  = "uswc"
    "us-west"          = "usw"

    # Global/continental zones
    "asia"    = "asia" # Asia
    "asia-pa" = "apac" # Asia Pacific
    "aus"     = "aus"  # Australia
    "bra"     = "bra"  # Brazil
    "can"     = "can"  # Canada
    "eu"      = "eu"   # Europe
    "global"  = "glob" # Global
    "ind"     = "ind"  # India
    "jap"     = "jap"  # Japan
    "kor"     = "kor"  # Korea
    "nor"     = "nor"  # Norway
    "sgp"     = "sgp"  # Singapore
    "swe"     = "swe"  # Sweden
    "uk"      = "uk"   # United Kingdom
    "us"      = "us"   # United States
  }

  cli_names = {
    "asia"             = "asia"               # Asia
    "asia-east"        = "eastasia"           # East Asia
    "asia-pa"          = "asiapacific"        # Asia Pacific
    "asia-south-east"  = "southeastasia"      # Southeast Asia
    "aus"              = "australia"          # Australia
    "aus-central-2"    = "australiacentral2"  # Australia Central 2
    "aus-central"      = "australiacentral"   # Australia Central
    "aus-east"         = "australiaeast"      # Australia East
    "aus-south-east"   = "australiasoutheast" # Australia Southeast
    "bra"              = "brazil"             # Brazil
    "bra-south"        = "brazilsouth"        # Brazil South
    "bra-south-east"   = "brazilsoutheast"    # Brazil Southeast
    "can"              = "canada"             # Canada
    "can-central"      = "canadacentral"      # Canada Central
    "can-east"         = "canadaeast"         # Canada East
    "cn-east-2"        = "chinaeast2"         # "China East 2"
    "cn-east-3"        = "chinaeast3"         # "China East 3"
    "cn-east"          = "chinaeast"          # "China East"
    "cn-north-2"       = "chinanorth2"        # "China North 2"
    "cn-north-3"       = "chinanorth3"        # "China North 3"
    "cn-north"         = "chinanorth"         # "China North"
    "eu"               = "europe"             # Europe
    "eu-north"         = "northeurope"        # North Europe
    "eu-west"          = "westeurope"         # West Europe
    "fr-central"       = "francecentral"      # France Central
    "fr-south"         = "francesouth"        # France South
    "ger-central"      = "germanycentral"     # Germany Central
    "ger-north-east"   = "germanynortheast"   # Germany Northeast
    "ger-north"        = "germanynorth"       # Germany North
    "ger-west-central" = "germanywestcentral" # Germany West Central
    "global"           = "global"             # Global
    "ind-central"      = "centralindia"       # Central India
    "ind"              = "india"              # India
    "ind-south"        = "southindia"         # South India
    "ind-west"         = "westindia"          # West India
    "isr-central"      = "israelcentral"      # Israel Central
    "ita-north"        = "italynorth"         # Italy North
    "jap-east"         = "japaneast"          # Japan East
    "jap"              = "japan"              # Japan
    "jap-west"         = "japanwest"          # Japan West
    "kor"              = "korea"              # Korea
    "kor-central"      = "koreacentral"       # Korea Central
    "kor-south"        = "koreasouth"         # Korea South
    "nor"              = "norway"             # Norway
    "norw-east"        = "norwayeast"         # Norway East
    "norw-west"        = "norwaywest"         # Norway West
    "pol-central"      = "polandcentral"      # Poland Central
    "qat-central"      = "qatarcentral"       # Qatar Central
    "saf-north"        = "southafricanorth"   # South Africa North
    "saf-west"         = "southafricawest"    # South Africa West
    "sgp"              = "singapore"          # Singapore
    "swe"              = "sweden"             # Sweden
    "swe-central"      = "swedencentral"      # Sweden Central
    "swe-south"        = "swedensouth"        # Sweden South
    "swz-north"        = "switzerlandnorth"   # Switzerland North
    "swz-west"         = "switzerlandwest"    # Switzerland West
    "uae-central"      = "uaecentral"         # UAE Central
    "uae-north"        = "uaenorth"           # UAE North
    "uk-south"         = "uksouth"            # UK South
    "uk"               = "uk"                 # United Kingdom
    "uk-west"          = "ukwest"             # UK West
    "us-central"       = "centralus"          # Central US
    "us-east-2"        = "eastus2"            # East US 2
    "us-east"          = "eastus"             # East US
    "us-north-central" = "northcentralus"     # North Central US
    "us-south-central" = "southcentralus"     # South Central US
    "us"               = "unitedstates"       # United States
    "us-west-2"        = "westus2"            # West US 2
    "us-west-3"        = "westus3"            # West US 3
    "us-west-central"  = "westcentralus"      # West Central US
    "us-west"          = "westus"             # West US
  }

  paired = {
    asia-east        = "asia-south-east"
    asia-south-east  = "asia-east"
    aus-central-2    = "aus-central"
    aus-central      = "aus-central-2"
    aus-east         = "aus-south-east"
    aus-south-east   = "aus-east"
    bra-south-east   = "bra-south"
    bra-south        = "us-south-central"
    can-central      = "can-east"
    can-east         = "can-central"
    cn-east-2        = "cn-north-2"
    cn-east-3        = "cn-north-3"
    cn-east          = "cn-north"
    cn-north-2       = "cn-east-2"
    cn-north-3       = "cn-east-3"
    cn-north         = "cn-east"
    eu-north         = "eu-west"
    eu-west          = "eu-north"
    fr-central       = "fr-south"
    fr-south         = "fr-central"
    ger-north        = "ger-west-central"
    ger-west-central = "ger-north"
    ind-central      = "ind-south"
    ind-south        = "ind-central"
    ind-west         = "ind-south"
    jap-east         = "jap-east"
    jap-west         = "jap-west"
    kor-central      = "kor-south"
    kor-south        = "kor-central"
    norw-east        = "norw-west"
    norw-west        = "norw-east"
    saf-north        = "saf-west"
    saf-west         = "saf-north"
    swe-central      = "swe-south"
    swe-south        = "swe-central"
    swz-north        = "swz-west"
    swz-west         = "swz-north"
    uae-central      = "uae-north"
    uae-north        = "uae-central"
    uk-south         = "uk-west"
    uk-west          = "uk-south"
    us-central       = "us-east-2"
    us-east-2        = "us-central"
    us-east          = "us-west"
    us-north-central = "us-south-central"
    us-south-central = "us-north-central"
    us-west-2        = "us-west-central"
    us-west-3        = "us-east"
    us-west-central  = "us-west-2"
    us-west          = "us-east"
  }

  paired_region = try(local.paired[local.region_identifier], null)
}