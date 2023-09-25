# Declaring and Setting Variables

In this lesson you will learn how to use variables in order to remove hardcoded values from your **main.tf** file.
Hardcoded values can be a security concern so we we use a special file called **variables.tf** to store settings just on our local machine. 
> NOTE: The **variables.tf** file should never be pushed to a repository.  Doing so may expose any sensitive value you have configured.

In the last lesson, the **main.tf** file was set to hard-code the value for the provider region.

In the new **main.tf** file for this lesson, the hardcoded value has been replaced the variable **var.region**

Here modify two empty files:
- **variables.tf** - used to declare variables and optionally default values
- **terraform.tfvars** - variable values are set in this file

## Steps

1. Open the file called **02/work/variables.tf**
1. Declare variable(s) using the table below

    | NAME | TYPE | DESCRIPTION |
    | --- | --- | --- |
    | region | string | the name of the aws region to use |
    ---

    
    Configuration for file **variables.tf**
    
    ```
    variable "region" {
        type = string
    }

1. Open the **02/work/terraform.tfvars** file

1. Now we specify the value for the **region** variable

    > Note: The file **terraform.tfvars.example** has been made available for reference

    <br>

    ```
    region = "us-west-2"
    ```

1. Initialize the directory
    ```
    terraform init
    ```

    You should see something similiar on the command line

    ```
    Initializing the backend...

    Initializing provider plugins...
    - Finding hashicorp/aws versions matching "~> 5.17"...
    - Installing hashicorp/aws v5.17.0...
    - Installed hashicorp/aws v5.17.0 (signed by HashiCorp)

    Terraform has created a lock file .terraform.lock.hcl to rec
    ord the provider  
    selections it made above. Include this file in your version control repository
    so that Terraform can guarantee to make the same selections by default when   
    you run "terraform init" in the future.

    Terraform has been successfully initialized!
    ```
    
1. (**terminal**) Format the document.  
    > This will just clean up the formatting and make the terraform files easier to read

    ```
    terraform fmt
    ```

1. (**terminal**) Verify the changes are valid

    ```
    terraform plan
    ```
---

> **LESSON COMPLETE!**

You successfully initialized your terraform project.