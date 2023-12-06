# A common cluster for generic workloads

> ## Terraform scripts performs following taks
>
> 1. Created new subdomain entry in Route53
> 2. Creates a security group for backend containers, also refer to a security group that accepts traffic over https and sets as the source for backend sec group
> 3. Creates Application Load Balancer for Customer ECS cluster, attaches ssl certificate
> 4. Creates an ECS cluster resources

### Commands to run

>#### DEV
> - terraform fmt
> - terraform validate
> - terraform fmt -check -diff
> - terraform init -backend-config="region=us-east-1" -backend-config="bucket=terraform-state-der-np" -backend-config="key=dev/apps/customer/maxder-ecs-cluster/terraform.tfstate" -backend-config="profile=default" -backend=true
> - terraform plan -var-file=envs/dev.tfvars -out dev-plan.json
> - terraform apply -var-file=envs/dev.tfvars

>#### TEST
> - terraform init -backend-config="region=us-east-1" -backend-config="bucket=terraform-state-der-np" -backend-config="key=test/apps/customer/maxder-ecs-cluster/terraform.tfstate" -backend-config="profile=default" -backend=true
> - terraform plan -var-file=envs/test.tfvars -out test-plan.json
> - terraform apply -var-file=envs/test.tfvars

>#### UAT
> - terraform init -backend-config="region=us-east-1" -backend-config="bucket=terraform-state-der-np" -backend-config="key=uat/apps/customer/maxder-ecs-cluster/terraform.tfstate" -backend-config="profile=default" -backend=true
> - terraform plan -var-file=envs/uat.tfvars -out uat-plan.json
> - terraform apply -var-file=envs/uat.tfvars

