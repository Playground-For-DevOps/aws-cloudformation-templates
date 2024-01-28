aws cloudformation validate-template --template-body file:///home/ubuntu/aws/aws-cloudformation-templates/self-test/EKS.yaml
aws cloudformation validate-template --template-body file:///home/ubuntu/aws/aws-cloudformation-templates/self-test/public_instance.yaml



aws cloudformation create-stack --stack-name test --template-body file:///home/ubuntu/aws/aws-cloudformation-templates/self-test/EKS.yaml --on-failure DELETE 
# create a CloudFormation stack that includes the creation of IAM related resources.
# You have to explicitly tell CloudFormation that you are OK with that.

# To make it work, simply add the parameter --capabilities CAPABILITY_IAM to
# your deploy command
aws cloudformation create-stack --stack-name test --template-body file:///home/ubuntu/aws/aws-cloudformation-templates/self-test/public_instance.yaml --on-failure DELETE --capabilities CAPABILITY_IAM
--tags "ENV:Nephio-test"
aws cloudformation delete-stack --stack-name test


ssh -i ssh/ntnguyen.pem ec2-user@private_ip -o "proxycommand ssh -W %h:%p -i ssh/ntnguyen.pem ec2-user@public_ip"

ssh  -J ec2-user@3.38.97.104 ec2-user@10.16.32.202 -i ssh/ntnguyen.pem