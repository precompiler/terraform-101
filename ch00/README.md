# Create AWS VPC and Subnet

```bash
# dry run
terraform plan

# generate dependency graph
terraform graph | dot -Tpng > graph.png

# create/update
terraform apply

# delete
terraform destroy
```