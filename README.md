In this Repository you will find the projects that create infrastructures in AWS, Docker, Kubernetes, Jenkins and many 
Complete projects will be done on a ubuntu EC2 instance. Now we will look into how to setup the terraform on ubuntu machine

✅ Step-by-step to install Terraform on Ubuntu EC2
1. SSH into your EC2 instance:
ssh -i "your-key.pem" ubuntu@<your-ec2-public-ip>

2. Update and install dependencies:
sudo apt-get update -y
sudo apt-get install -y wget unzip curl gnupg software-properties-common

3. Add the HashiCorp GPG key:
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

4. Add the official Terraform repository:
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list > /dev/null

5. Update and install Terraform:
sudo apt-get update -y
sudo apt-get install terraform -y

7. Verify installation:
terraform -v

You should see something like:
Terraform v1.xx.x
