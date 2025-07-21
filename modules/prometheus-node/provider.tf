#### must have tf provider included in the module folder to 
#### utilize with multiple providers (ie different regions)

terraform {
  required_version = ">= 1.5"
  
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13"
    }
  }
}
