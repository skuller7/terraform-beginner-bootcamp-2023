# Terraform Beginner Bootcamp 2023 - Week 0

# Semantic Versioning 

- [Terraform Beginner Bootcamp 2023](#terraform-beginner-bootcamp-2023)
- [Semantic Versioning](#semantic-versioning)
  * [Installing  the Hashicorp Terraform CLI](#installing--the-hashicorp-terraform-cli)
  * [Installing the Amazon AWS CLI](#installing-the-amazon-aws-cli)
  * [Terraform basics](#terraform-basics)
  * [Terraform registry](#terraform-registry)
    + [Terraform Console](#terraform-console)
    + [Terraform init](#terraform-init)
    + [Terraform plan](#terraform-plan)
    + [Terraform apply](#terraform-apply)
    + [Terraform destroy](#terraform-destroy)
    + [Terraform state file](#terraform-state-file)
  * [Issues with Terraform cloud login and Gitpod](#issues-with-terraform-cloud-login-and-gitpod)



This projects is going to be utilize semantic versioning for its tagging 
    [semver.org](https://semver.org)

The general format:

 **MAJOR.MINOR.PATCH**, eq. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes


## Installing  the Hashicorp Terraform CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://www.gitpod.io/docs/configure/workspaces/tasks


## Installing the Amazon AWS CLI

AWS CLI is installed for this bootcamp project

[Install AWS CLI] (https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

We can figure out  if our aws creds are configured correctly 
```sh
 aws sts get-caller-identity
```

We need an aws account and an IAM user with admin permssions & added MFA 

Also add the security credentials in and export them in bash 


## Terraform basics

## Terraform registry

 Terraform  soureces their providers and modules from the Registry at [registry.terraform.io](https://registry.terraform.io/)

 - **Providers** is an interface to an API that allows you to create resorces in Terraform like talking with the aws or azure
 - **Modules**  is a collection of resources defined by Terraform files 

   (Random Terraform Provider)[https://registry.terraform.io/providers/hashicorp/random/]

 ### Terraform Console

 We can see a manual for terraform by just typing `terraform`

 ### Terraform init 

 Run `terraform init` at the start of the project to inicialize the project

 ### Terraform plan
 
 After running `terraform plan` this will generate a changeset about a state of our infrastructure and what was changed

 ### Terraform apply

 The  `terraform apply` command executes the actions proposed in a Terraform plan.
 An apply should prompt us a yes or no . To automate this and automatically say yes run : `terraform apply --auto-approve`

 ### Terraform destroy

 Will destroy resources after running the command `terraform destroy`

 ### Terraform state file

 `.terraform.tfstate` contains infomation about the current state of your infrastrcuture


 ## Issues with Terraform cloud login and Gitpod

 When trying to run ` terraform login ` in our terminal we get a weird output to generate a token, 
 and so we have to do this process manually 

 First generate the token from you terraform cloud account 
 ```
 https://app.terraform.io/app/settings/tokens?source=terraform-login
 ```

 Then create the file & open in console by running 
 
 ```sh
   touch  /home/gitpod/.terraform.d/credentials.tfrc.json
   open  /home/gitpod/.terraform.d/credentials.tfrc.json
 ```

After that print this json code in your file & replace the YOUR-TOKEN with your actual token 

```tf
{
  "credentials": {
    "app.terraform.io": {
      "token": "YOUR-TOKEN"
    }
  }
}
```

We have automated this workaround with the following bash script [/nbt/generate_tfrc_creds](/nbt/generate_tfrc_creds)


