### DEMO

https://osmanya.co

## AWS Infrastructure Diagram

![AWS Diagram](/images/aws-infrastructure-diagram.png)

# Provisioning of Infrastructure with Terraform

This Terraform deployment is highly available and scalable AWS architecture. It uses an Auto Scaling Group to automatically add EC2 instances when CPU utilisation reaches 75%, ensuring consistent performance. An AWS Elastic Load Balancer efficiently distributes traffic also ensuring uptime. This setup is ideal for handling fluctuating traffic and maintaining robust application performance.

## Secure Web Infrastructure with Dynadot, AWS Certificate Manager and Route 53

The website is configured with a secure encrypted connection thanks to a SSL certificate issued by AWS Certificate Manager. I registered the domain on DynoDot which is managed using AWS Route 53. Route 53 routes traffic to the AWS load balancer, ensuring high availability and optimal traffic distribution for the website.
