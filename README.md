# TASK FOR TERRAGRUNT 
1 -  Your manager has requested you to set up 2 ec2 instances in different AZ's in order to host a new application that is beign tested
2 - check to see if teragrunt and terraform is installed
3 -  You will need to create a folder structure 
4 - check to see if teragrunt and terraform is installed
5 - Make ec2 directory and cd into that and create a modules directory and then a terragrunt.hcl file
6 - Go into modules folder and create 3 different files => variables.tf outputs.tf and main.tf
7 - After creating the files go back into ec2 folder and edit the terragrunt.hcl file => inside here we have a terraform block which is how terraform will interact with terragrunt, THE INPUTS BLOCK TERRAGRUNT SET ANY INPUTS WE WANT TO PASS IN AS ENV VARIABLES



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

