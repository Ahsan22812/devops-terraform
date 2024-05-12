This code is done with the following best practices:
Separate provider file
Backend block
DynamoDb table for state locking
Version enabled in S3 bucket to see the state files versions of terraform to see where the problem arises.
Elastic IP to have static ec2 public IP
Use of variables
Use of modules and workspaces in Terraform
