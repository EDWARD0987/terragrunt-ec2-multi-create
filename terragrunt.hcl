terraform {
    source = "./modules.///"
}

inputs = {
    instance_type = "t2.micro"
    ami           = ""
    az1           = "us-east-1a"
    az2           = "us-east-1b"

}