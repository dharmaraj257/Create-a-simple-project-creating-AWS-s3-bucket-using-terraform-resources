
# Create a simple project to create an AWS s3 bucket using Terraform resources.

Create Aws S3 bucket using Infrastructure as  tool terraform script 

Step 1:  Create a Ubuntu server

1. launch an instance and give the name ubuntu. 
2.	Select Ubuntu and t2. micro-CPU.
3. download a new key pair.

4. select default VPC
5. In the security group SSH, https, and HTTP allow anywhere.
6.	launch instance.



Step 2: Log in to the Ubuntu server using Putty
1.	copy the public IPv4 and paste it on the putty.

2.	Select SSH go to the authentication and upload the ppk file.
3.	Then enter the password ubuntu and log in.


Step 3:	Update the server

1.	to update the server use the command

2.	sudo apt update -y

Step 4:	Install the terraform on the server.

1.	visit https://www.terraform.io/ and click the download button.


2.	select Linux amd64 and copy the link address.


3.	Paste on the server wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip


4.	    sudo apt install unzip -y

5.	    sudo unzip terraform_1.3.4_linux_amd64.zip

6.  	sudo cp terraform /bin

7.  	terraform -v

Step 5:	Select the registry and create an s3 bucket

1.    Go to the home page and click on the registry.


2.	Then select the AWS provider and go to the documentation.



3.	search s3 and copy the resource s3 bucket.

4.	And the provider, region, access key, secret key

```
provider "aws" { region = "us-east-2"
access_key = "***********************"
secret_key = "0x9lrO****************W27nMZKIvBdnE"
}


resource "aws_s3_bucket" "b" { bucket = "creatings3"
acl  = "private"


versioning { enabled = true
}
}
```

Output:

![image](https://user-images.githubusercontent.com/100831265/205539720-bbaf97a4-ee0e-4524-8c66-a77b2ea19f23.png)
