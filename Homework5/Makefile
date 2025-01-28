virginia:
	terraform workspace select -or-create virginia 
	terraform init
	terraform apply -var-file us-east-1.tfvars --auto-approve

ohio:
	terraform workspace select -or-create ohio 
	terraform init
	terraform apply -var-file us-east-2.tfvars --auto-approve

california:
	terraform workspace select -or-create california
	terraform init
	terraform apply -var-file us-west-1.tfvars --auto-approve

oregon:
	terraform workspace select -or-create oregon
	terraform init
	terraform apply -var-file us-west-2.tfvars --auto-approve

virginia-d:
	terraform workspace select -or-create virginia 
	terraform init
	terraform destroy -var-file us-east-1.tfvars --auto-approve

ohio-d:
	terraform workspace select -or-create ohio 
	terraform init
	terraform destroy -var-file us-east-2.tfvars --auto-approve

california-d:
	terraform workspace select -or-create california
	terraform init
	terraform destroy -var-file us-west-1.tfvars --auto-approve

oregon-d:
	terraform workspace select -or-create oregon
	terraform init
	terraform destroy -var-file us-west-2.tfvars --auto-approve

apply-all: virginia ohio oregon california

destroy-all: virginia-d ohio-d oregon-d california-d 

