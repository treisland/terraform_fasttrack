# Intializing the Terraform Project

In this lesson you'll take your first steps towards working with Terraform by initalizing the project folder.

> Note: See the **solutions** folder for the what the file(s) should look like at the end of this lesson.

## Steps

1. Open the **work/main.tf** file

2. Add configuration below to specify the minimum terraform version to use along with the the resource provider.

    **required version** = the minimum version of terraform that should work with this configuration

    **required_providers** = defining the resource providers and their corresponding versions that will be used by terraform to interact and provision resources through the providers' APIs.

    
    📄 **work/main.tf** file

    ```
    terraform {

        required_version = ">=1.5.0"

        required_providers {
            aws = {
            source  = "hashicorp/aws"
            version = "~> 5.17"
            }
        }
    }

    ```
1. After the **terraform** section add a new property for the "aws" provider that we have specified.

    ```
    ...

    provider "aws" {
        region  = "us-west-2"
    }
    ```
---
Here is what the full file should look like

```
terraform {

  required_version = ">=1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17"
    }
  }
}


provider "aws" {
  region  = "us-west-2"
}

```

---

> **LESSON COMPLETE!**

You successfully completed this lesson.