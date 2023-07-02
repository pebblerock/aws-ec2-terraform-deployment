# Provisioning of Infrastructure with Terraform

This is a terraform deployment of a Docker image to an EC2 instance with a load balancer and autoscaling group. Using a bash template, Docker is installed on the EC2 instance at launch. A Docker image is pulled from Docker Hub and run on the server.


## AWS Infrastructure Diagram

![AWS Diagram](/images/aws-infrastructure-diagram.png)

### URL

http://osmanya.co