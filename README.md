# Deploying AWS 3-Tier Webapp with Terraform, Docker, and GitHub Actions (CI/CD) Pipeline

## Project Structure
![Infrastructure](./assests/AWS-Three-Tier-Architecture.jpg)

## Project Description
- Dockerize a Flask app and push it to AWS Elastic Container Registry (ECR).
- Deploy AWS Infrastructure using Terraform modules.
- Provision EC2 Instances and pull latest Docker image and run it.
- Finally: You will have a container running flask app on 2 EC2 Instances behind Application Load Balancer.


## Technologies Used in Detail: 
1. **Terraform (IaC)**: To deploy AWS Infrastructure resources using Terraform modules.
2. **AWS Resources**:
	- VPC (2 Public Subnets, 4 Private Subnets, Elastic IP, Nat Gateway, Internet Gateway).
	- 3 EC2 Instances (two for hosting the app and bastion host to ssh), and Application Load Balancer.
	- RDS, and Elasticache.
	- S3 and Dynamodb: to store state file and lock it.
	- Security Groups.
3. **Docker**: To dockerize my Flask application using a Dockerfile.
4. **GitHub Actions (CI/CD) Pipeline**: To do these Jobs on every git push command, also manually triggered:
	- Automate the Infrastructure building and destroying process.
	- Provision the EC2 Instances (Install and configure Docker).
	- Build, push docker image to AWS ECR, then pull and run docker container in the ec2 instance.



