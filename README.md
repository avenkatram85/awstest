# awstest for CCP

Fly Commands:
 fly -t bbl sp -p ccp-awstest -c ccp-aws.yml -l variables.tf
 
 fly -t bbl tj -j ccp-awstest/terraform-plan -w
 fly -t bbl w -j ccp-awstest/terraform-apply
 fly -t bbl tj -j ccp-awstest/terraform-destroy -w
 fly -t bbl tj -j ccp-awstest/terraform-plan -w
 fly -t bbl tj -j ccp-awstest/terraform-destroy -w


  
