#Step 1.    Run the following command to start the ssh-agent in the background. The ssh-agent stores your SSH keys in memory.
# Start ssh-agent 
ssh-gent -s
eval $(ssh-agent)
# Step 2.    Run the following command to add the SSH key to the ssh-agent:

ssh-add "/path/to/key.pem"
# 3.    Run the following command to verify that the keys are added to the ssh-agent:

ssh-add -l
# 4.    Run the following command to connect to the bastion host. In the following command, replace User and Bastion_Host_****IP_address with the correct values for your use case.

ssh -A User@Bastion_Host_IP_Address
# Note: Make sure that you include the -A flag in the preceding command. If you don't add the -A flag, then ssh-agent forwarding won't work because the keys aren't added to memory. After adding the SSH keys to memory, you don't have to specify the SSH key itself using the -i flag. This is because SSH automatically attempts to use all of the SSH keys that are saved in ssh-agent.

# 5.    After connecting to the bastion host, run the following command to connect to the private Linux instance. In the following command, replace User and Private_instance_IP_address with the correct values for your use case.

ssh User@Private_instance_IP_address

# If the matching private key for the private instance is loaded into ssh-agent, then the connection succeeds.

# Or only one command
ssh -J user@bastion-host user@private-ip
# ssh -J ec2-user@13.125.197.13 ec2-user@10.16.46.208

# Clear all identities save in-memory of ssh-agent
ssh-agent -k