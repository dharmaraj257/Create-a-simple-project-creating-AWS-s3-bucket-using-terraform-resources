
# Project: create a simple project creating AWS s3 bucket using terraform resources.

Create Aws S3 bucket using Infrastructure as  tool terraform script 

Step 1:  Create a ubuntu server

1. launch instance and give name ubuntu. 
2.	select ubuntu and t2. micro-CPU.
3. download a new keypair.

4. select default VPC
5. In security group allows ssh, https and http allow anywhere.
6.	launch instance.


 ![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/c12f02f1-2429-4ad7-ba43-6296ed83f24f)

Step 2: Log in to the ubuntu server using putty
1.	copy the public IPv4 and paste on the putty.

2.	Select ssh and go to the authentication and upload the ppk file.
3.	Then put password ubuntu and log in.

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/36228471-a534-48a2-b842-c8d2d5c339e1)

Step 3:	Update the server

1.	use to update server use command

2.	Sudo apt update -y
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/6f8dfa2f-9f7a-43b6-8c45-2e04ff977541)

Step 4:	Install the terraform on the server.

1.	visit https://www.terraform.io/ and click the download button.

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/793a5403-fdef-4cda-902d-87a8376a5edf)


2.	select Linux amd64 and copy the link address.

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/c9d39b30-ff85-419b-a640-12f29c7deaf3)

3.	Paste on the server wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/c7d4d1e4-2fd6-47b9-87d8-fc4e4eaf2131)

4.	    Sudo apt install unzip -y
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/6f12fd4e-27f2-483b-a930-43e99895d502)

5.	    Sudo unzip terraform_1.3.4_linux_amd64.zip
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/03bc8869-1734-4412-8965-fb1f23583787)

6.  	Sudo cp terraform /bin
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/629fac4d-96d5-4743-8cf3-2448da094c02)

7.  	terraform -v
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/9e18c7a2-0e89-482b-8916-90ca0d6b3fbe)

Step 5:	Select registry and create s3 bucket

1.    Go to the home page and click on the registry.

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/994723d3-b3c3-4b1c-be89-aff1e9b457e0)

2.	Then select the AWS provider and go to the documentation.


![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/adab087d-3afe-4d08-9da7-4312e58ce054)

3.	search s3 and copy the resource s3 bucket.
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/4e8f107e-7833-4186-a005-6e46d4a665e8)

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/d9afecb4-2522-4cd9-bbf4-db2b7d51f8d9)

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/9cc7c3d6-e6ba-4f86-9678-ab9a87f7ab5b)

4.	and the provider, region, access key, secret key


provider "aws" { region = "us-east-2"
access_key = "***********************"
secret_key = "0x9lrO****************W27nMZKIvBdnE"
}


resource "aws_s3_bucket" "b" { bucket = "creatings3"
acl  = "private"


versioning { enabled = true
}
}



Output:

![image](https://user-images.githubusercontent.com/100831265/205539720-bbaf97a4-ee0e-4524-8c66-a77b2ea19f23.png)