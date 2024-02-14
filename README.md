## README.md for GitHub Actions Pipeline

This repository contains reusable GitHub Actions for deploying infrastructure using Terraform on AWS.

### Included Files:

* `terraform-plan.yml`: This reusable workflow performs Terraform plan and uploads the plan artifact.
* `terraform-apply.yml`: This reusable workflow downloads the plan artifact and performs Terraform apply.
* `pipeline.yml`: This main workflow orchestrates the plan and apply stages using the reusable workflows.

### Prerequisites:

* A GitHub repository containing your Terraform code and configuration files.
* AWS credentials stored as GitHub secrets: `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

### Usage:

1. Replace the following values in `pipeline.yml` with your specific details:
    * `aws_backend_bucket_name`: Your S3 bucket name for storing Terraform state.
    * `aws_backend_bucket_prefix`: The folder name within the bucket for state files.
    * `aws_backend_region`: The AWS region where your resources are deployed.
    * `aws_backend_dynamodb_table`: The DynamoDB table name used for locking.
    * `aws_backend_encrypt`: Enable or disable state file encryption.
    * `tf_vars_file`: The name of your Terraform variables file.
2. Commit your changes and push your repository to GitHub.
3. The workflows will automatically trigger on push events to the `main` branch and pull request events.

### Reusable Workflows:

* `terraform-plan.yml`: This workflow can be used separately for Terraform planning outside the main pipeline.
* `terraform-apply.yml`: This workflow can be used separately for Terraform applying outside the main pipeline.

### Additional Notes:

* You can customize the workflows further by modifying the steps and scripts based on your specific needs.
* Consider using environment variables to manage different deployment environments (e.g., dev, staging, production).
* Implement appropriate security measures to protect your AWS credentials and infrastructure.
