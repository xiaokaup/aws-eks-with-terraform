kubectl apply -f eks/1-rbac


aws configure --profile manager # add manager AWS credentials

aws sts assume-role \
    --role-arn arn:aws:iam::637423338589:role/staging-demo-eks-admin \
    --role-session-name manager-session \
    --profile manager
# then setup .aws/config

aws eks update-kubeconfig --region us-east-2 --name staging-demo --profile eks-admin

kubectl get pods

kubectl auth can-i "*" "*" # yes