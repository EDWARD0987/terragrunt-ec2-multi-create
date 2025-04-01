# TASK FOR TERRAGRUNT 
1 -  Your manager has requested you to set up 2 ec2 instances in different AZ's in order to host a new application that is beign tested

2 - check to see if teragrunt and terraform is installed

3 -  You will need to create a folder structure 

4 - check to see if teragrunt and terraform is installed

5 - Make ec2 directory and cd into that and create a modules directory and then a terragrunt.hcl file

6 - Go into modules folder and create 3 different files => variables.tf outputs.tf and main.tf

7 - After creating the files go back into ec2 folder and edit the terragrunt.hcl file => inside here we have a terraform block which is how terraform will interact with terragrunt, THE INPUTS BLOCK TERRAGRUNT SET ANY INPUTS WE WANT TO PASS IN AS ENV VARIABLES



Create the Directory Structure for the Terragrunt Project

Check that Terraform is installed and functioning properly.
Check that Terragrunt is installed and functioning properly.
Create a new directory to house your Terraform code called ec2-instances.
In the ec2-instances directory, create a directory called module.
Also create a terragrunt.hcl file in the same ec2-instances directory.
Write Your Terragrunt Module Code

In the module directory, create a new file called main.tf and add the provided code.
Create a new file called variables.tf and add the provided code.
Create a new file called outputs.tf and add the provided code.
Write Your terragrunt.hcl File Code

Create a new file called terragrunt.hcl and add the provided code.

Deploy Your Code and Verify Resources Were Launched in AWS

Initialize the Terragrunt configuration to fetch any required providers and get the code being referenced in the module block.
Validate the code.
Review the actions that will be performed when you deploy the code.
Deploy the code.
View the resources that were created.
Tear down the infrastructure.

# create a directory structure for the terragrunt project
# create the ec2 instance directory
mkdir ec2-instances 

# move to the directory
cd ec2-instances
# create the module sub directory inside the ec2-instance directory
mkdir modules
# create the terragrunt.hcl file
touch terragrunt.hcl

# move to the module sub directory ( WRITE YOUR TERRAGRUNT MODULE CODE)
cd modules and create  variables.tf main.tf and outputs.tf

add configs to files => variables.tf main.tf and output.tf => you will find this in the code

# WRITE YOUR TERRAGRUNT HCL FILE CODE

move back to the ec2-instances directory  and create  terragrunt.hcl file

add the code to the file 

# Deploy Your Code and Verify Resources Were Launched in AWS

Initialize the backend:

terragrunt init
Ensure the configuration is valid:

terragrunt validate 
Review the actions to be performed when the code is deployed:

terragrunt plan
Observe we plan to add two EC2 instances. The public IP address of both will be output to the screen after the apply.

Deploy the code:   

terragrunt apply --auto-approve
Log in to the AWS Management Console using the credentials provided in the lab.

Navigate to EC2, and you should see that both instances were created.

Download and output the state:

terragrunt state pull
Tear down the infrastructure:

terragrunt destroy --auto-approve

