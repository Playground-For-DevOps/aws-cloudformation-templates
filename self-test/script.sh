aws cloudformation validate-template --template-body file:///home/ubuntu/aws/aws-cloudformation-templates/self-test/EKS.yaml



aws cloudformation create-stack --stack-name test --template-body file:///home/ubuntu/aws/aws-cloudformation-templates/self-test/EKS.yaml --on-failure DELETE 
--tags "ENV:Nephio-test"
aws cloudformation delete-stack --stack-name test

