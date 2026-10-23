# Terraform GCP Student Demo

This is a simple Terraform project for teaching students how a basic Terraform repository is structured.

## Resources Created

1. Google Cloud Storage bucket
2. Google Compute Engine VM

## Folder Structure

```text
terraform-gcp-student-demo/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── locals.tf
├── outputs.tf
├── .gitignore
└── README.md
```

## What Each File Does

| File | Purpose |
|---|---|
| `main.tf` | Contains Terraform/provider configuration and resource blocks |
| `variables.tf` | Declares input variables |
| `terraform.tfvars` | Provides actual values for the variables |
| `locals.tf` | Defines reusable local values |
| `outputs.tf` | Displays useful values after Terraform apply |
| `.gitignore` | Prevents Terraform state/local working files from being committed |

## Prerequisites

- Terraform installed
- Google Cloud CLI installed
- A GCP project
- Required APIs enabled
- Permission to create Compute Engine and Cloud Storage resources
- Application Default Credentials configured

Authenticate locally:

```bash
gcloud auth application-default login
```

Set your project:

```bash
gcloud config set project YOUR_GCP_PROJECT_ID
```

Edit `terraform.tfvars` and replace:

```hcl
project_id = "YOUR_GCP_PROJECT_ID"
```

## Terraform Execution Flow

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
```

To remove all resources:

```bash
terraform destroy
```

## Simple Learning Flow

```text
terraform.tfvars
      |
      v
variables.tf
      |
      v
locals.tf
      |
      v
main.tf
      |
      v
GCP Resources
      |
      v
outputs.tf
```

### Easy explanation for students

- `variables.tf` = What inputs does my Terraform code accept?
- `terraform.tfvars` = What values am I giving to those inputs?
- `locals.tf` = What reusable/calculated values do I want inside the project?
- `main.tf` = What infrastructure should Terraform create?
- `outputs.tf` = What information should Terraform show me after creation?

> Note: `terraform.tfvars` can contain environment-specific or sensitive values. In real production repositories, review carefully before committing secrets. Never store passwords, private keys, tokens, or service-account keys in Git.
