# Cloud Automation
This project is made to display the Cloud Automation tools available and how to use them to have a online Website up and running in no time in AWS cloud using Terraform(to do IAAC) and get the public IP of same. We can also delete the whole setup in single command also. Here I have shown how to use Terraform to show the benefits of Infrastructure as a Code(IAAC) and make depolyment of whole setup smooth and easy.

#Application and Services used:
## Public CLoud :
### AWS
![image](https://user-images.githubusercontent.com/64806938/157460708-e9b51f91-45d6-4a3a-a453-94dd2dcee284.png)

Amazon Web Services, Inc. (AWS) is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis. These cloud computing web services provide a variety of basic abstract technical infrastructure and distributed computing building blocks and tools. One of these services is Amazon Elastic Compute Cloud (EC2), which allows users to have at their disposal a virtual cluster of computers, available all the time, through the Internet. AWS's virtual computers emulate most of the attributes of a real computer, including hardware central processing units (CPUs) and graphics processing units (GPUs) for processing; local/RAM memory; hard-disk/SSD storage; a choice of operating systems; networking; and pre-loaded application software such as web servers, databases, and customer relationship management (CRM).


##  To demonstrate Infrastructure as a Code:
### Terraform
![image](https://user-images.githubusercontent.com/64806938/157460764-e949605f-04c6-4e58-9598-96bc47cf7637.png)

Terraform is an open-source infrastructure as code software tool created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language, or optionally JSON.

## Hardware:
### EC2 Instance
![image](https://user-images.githubusercontent.com/64806938/157460821-8b03900a-0c0e-4c84-b961-8a25b64bc85c.png)

Amazon Elastic Compute Cloud (Amazon EC2) provides scalable computing capacity in the Amazon Web Services (AWS) Cloud. Using Amazon EC2 eliminates your need to invest in hardware up front, so you can develop and deploy applications faster. You can use Amazon EC2 to launch as many or as few virtual servers as you need, configure security and networking, and manage storage. Amazon EC2 enables you to scale up or down to handle changes in requirements or spikes in popularity, reducing your need to forecast traffic.


## For Backup:
### EBS (Elastic Block Storage)
![image](https://user-images.githubusercontent.com/64806938/157461006-ee7fb305-fe8a-4de1-8dd7-06d8ccd5b772.png)

An Amazon EBS volume is a durable, block-level storage device that you can attach to your instances. After you attach a volume to an instance, you can use it as you would use a physical hard drive. EBS volumes are flexible. For current-generation volumes attached to current-generation instance types, you can dynamically increase size, modify the provisioned IOPS capacity, and change volume type on live production volumes.



## For Web Hosting:
### Apache HTTP server
![image](https://user-images.githubusercontent.com/64806938/157461092-58e04898-5c99-4d01-ad46-cf19d0c28c13.png)

The Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
The Apache HTTP Server is a project of The Apache Software Foundation

# STEP BY STEP GUIDE OF PROJECT
## STEP 1. LAUNCH EC2 INSTANCE ON AWS 
![image](https://user-images.githubusercontent.com/64806938/157461965-db6baa21-2985-4401-bfd0-0e9b29fd68d3.png)

## STEP 2. SET UP A EBS AS A BACKUP 
![image](https://user-images.githubusercontent.com/64806938/157469320-f576790f-5d1a-4ce9-b670-d315f9974abd.png)

## STEP 4. MOUNTING EBS as backup to /var/www/html/ 
![image](https://user-images.githubusercontent.com/64806938/157469477-1d48d66b-0674-4ec7-b3d2-74677dac9975.png)

## STEP 5.SET THE INBOUND TRAFFIC FOR SECURITY GROUP in AWS 
![image](https://user-images.githubusercontent.com/64806938/157469685-1e1771d0-ea8c-413b-9885-d2bdbbd37d28.png)

## STEP 6. EXECUTING REMOTE COMMAND TO AWS EC2 INSTANCES TO INSTALL:
HTTPD APACHE SERVER
GIT
PHP
![image](https://user-images.githubusercontent.com/64806938/157469881-2b5112e9-519f-4c9f-8a67-b152cb864f6b.png)

## STEP 7. Copying data from github to /var/www/html/
![image](https://user-images.githubusercontent.com/64806938/157470059-e9669ab5-c850-422d-a666-9ad2cb85cb68.png)

## STEP 8. COPYING PUBLIC IP IN TEXT DOUMENT 
![image](https://user-images.githubusercontent.com/64806938/157470245-c90aed6d-6336-4fc8-9e41-94177b7b70d4.png)
![image](https://user-images.githubusercontent.com/64806938/157470265-6b352b93-3037-4061-90bf-30f97db3c734.png)

## STEP 9. Opening website in local browser
![image](https://user-images.githubusercontent.com/64806938/157470449-bf502a84-5acd-4f3b-9654-801ea37278a3.png)
![image](https://user-images.githubusercontent.com/64806938/157470480-abf939f9-b9af-4069-bb84-67093c85c1c3.png)

## To end all setup in 1 command 
![image](https://user-images.githubusercontent.com/64806938/157470590-181b623c-5a2c-44c2-9d87-bfc376d57d8a.png)
![image](https://user-images.githubusercontent.com/64806938/157470621-bf476f0b-5291-4498-9019-11d8707bd739.png)












