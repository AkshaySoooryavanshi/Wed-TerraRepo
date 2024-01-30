# Deploying AWS 3-Tier Webapp with Terraform, Docker, and GitHub Actions (CI/CD) Pipeline

## Project Structure
![Infrastructure](./assests/AWS-Three-Tier-Architecture.jpg)

## Project Description

- Deployed AWS Infrastructure using Terraform modules.
 - Aa running web application in 2 EC2 Instances behind Application Load Balancer.


## Technologies Used in Detail: 
1. **Terraform (IaC)**: To deploy AWS Infrastructure resources using Terraform modules.
2. **AWS Resources**:
	- VPC (2 Public Subnets, 4 Private Subnets, Elastic IP, Nat Gateway, Internet Gateway).
	- 3 EC2 Instances (two for hosting the app and bastion host to ssh), and Application Load Balancer.
	- RDS, and Elasticache.
	- S3 and Dynamodb: to store state file and lock it.
	- Security Groups.

3. **GitHub Actions (CI/CD) Pipeline**: To do these Jobs on every git push command, also manually triggered:
	- Automate the Infrastructure building and destroying process.
	- Provision the EC2 Instances (Install and configure Docker).
Next Steps:

	- Build, push docker image to ECR/Artifactory, then pull and run docker container in the ec2 instance.
![image](https://github.com/AkshaySoooryavanshi/Wed-TerraRepo/assets/96631562/107f8de2-115e-4590-b130-6c09b37880ce)

![image](https://github.com/AkshaySoooryavanshi/Wed-TerraRepo/assets/96631562/ef1d1ecc-7394-40f2-b896-bbd8d31500d0)






Access Token from Hashicrop Vault
Request the JWT from the GitHub OIDC provider, and present it to HashiCorp Vault to receive an access token:
You can use the hashicorp/vault-action action to fetch the JWT and receive the access token from Vaul



