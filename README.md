# Terraform Beginner Bootcamp 2023

# Terraform Beginner Bootcamp 2023

# Semantic Versioning 

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
