# ==============================================================================
# IMPORT MODULE REFERENCE
# ==============================================================================

# ==============================================================================
# THIS MODULE
# ==============================================================================
terraform {

  required_version = ">= {{ .RequiredVersion }}"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> {{ .AWSVersion }}"
    }
  }

  backend "s3" {
    bucket  = "{{ .Bucket }}"
    key     = "{{ .Key }}"
    profile = "{{ .Profile }}"
    region  = "{{ .Region }}"
  }
}

provider "aws" {
    profile = "{{ .Profile }}"
    region  = "{{ .Region }}"
}
