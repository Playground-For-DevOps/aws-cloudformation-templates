
# cloud-nuke aws --region ap-northeast-2 --resource-type ec2 \
#  --resource-type acm \
#   --resource-type apigateway \
#   --resource-type apigatewayv2 \
#    --resource-type asg \
#    --resource-type cloudtrail \
#    --resource-type rds-cluster \
#    --resource-type ebs \
#    --resource-type ecscluster \
#    --resource-type elb \
#    --resource-type elbv2 \
#    --resource-type nat-gateway \
#    --resource-type eks \
#    --resource-type ecs \
#    --resource-type sqs \
#    --resource-typ DynamoDB 

cloud-nuke aws --region ap-northeast-2 --exclude-resource-type ec2-keypairs
cloud-nuke aws --region ap-northeast-1 --exclude-resource-type ec2-keypairs
# Checck  Network
# https://ap-northeast-2.console.aws.amazon.com/vpc/home?region=ap-northeast-2#Home:
# Check Ec2 : 
# https://ap-northeast-2.console.aws.amazon.com/ec2/home?region=ap-northeast-2#Home:https://ap-northeast-2.console.aws.amazon.com/ec2/home?region=ap-northeast-2#Home: