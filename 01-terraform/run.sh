#!/bin/bash

terraform init
terraform plan  


terraform destroy -auto-approve 
terraform apply -auto-approve 


sleep 5
