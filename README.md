# Cloud Weekend - UAEH: Universidad Autónoma del Estado de Hidalgo
Docker build to AWS ECR and helm charts deployments to AWS EKS

[IEEE ESTL on LinkedIn](https://www.linkedin.com/company/ieee-estl/?miniCompanyUrn=urn%3Ali%3Afs_miniCompany%3A99236601)

Welcome to our DevOps workflow repository! This README will guide you through the steps to set up and utilize our pipeline for seamless deployment using Terraform, GitHub Actions, and Kubernetes.

## Overview
Our DevOps workflow streamlines the process of deploying applications to Amazon Web Services (AWS) using Terraform for infrastructure provisioning, GitHub Actions for continuous integration and continuous deployment (CI/CD), and Kubernetes for container orchestration.

## Setup Instructions
1. Creating a Gitodic User with Terraform
To connect your GitHub repository with AWS, you'll first need to create a Gitodic user using Terraform. Follow these steps:

- Clone this repository to your local machine.
- Navigate to the terraform directory.
- Run Terraform scripts to create the Gitodic user.
- Follow the prompts to set up access keys and permissions.

2. Updating AWS Secrets in GitHub Actions
Before running any pipelines, ensure that your AWS region and account secrets are updated in GitHub Actions. Follow these steps:

- Navigate to the .github/workflows directory.
- Open the appropriate workflow file.
- Update the aws_region and aws_account variables with your AWS details.

3. Manual Cluster Creation Pipeline
To manually create a cluster, follow these steps:

- Ensure that your GitHub repository is connected to AWS via the Gitodic user.
- Navigate to the Actions tab in your GitHub repository.
- Find the workflow for creating a cluster and run it manually.
- Monitor the progress and troubleshoot any issues as needed.

4. Modifying Python Code and Deployment Pipeline
To modify the Python code and trigger the deployment pipeline, follow these steps:

- Make changes to the Python code located in the ./code/ directory.
- Commit and push your changes to the repository.
- GitHub Actions will automatically trigger the deployment pipeline.
- The pipeline will compile the image and deploy it to Kubernetes using Helm.

## Conclusion
Our DevOps workflow simplifies the process of deploying applications to AWS using Terraform, GitHub Actions, and Kubernetes. By following the steps outlined in this README, you can efficiently manage infrastructure, automate deployments, and ensure smooth application delivery. If you encounter any issues or have questions, please refer to our documentation or reach out to our DevOps team for assistance.

Happy deploying! 🚀









