ENV_NAME=$(echo $GO_STAGE_NAME | tr [:upper:] [:lower:] )

aws ssm put-parameter  --name "${ENV_NAME}.expense.${component}.app_version"  --type "String"  --value "${app_version}"  --overwrite

#ansible-playbook  -i  backend-dev.madhanmohanreddy.tech, -e  ansible_user=centos -e  ansible_password=DevOps321 expense.yml -e service_name=${component} -e env=dev -e app_version=${app_version}