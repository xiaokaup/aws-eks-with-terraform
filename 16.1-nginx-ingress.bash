# Infrastructure as Code (IaC) with Terraform
terragrunt apply

kubectl get svc -n ingress

kubectl get pods -o wide -n ingress

kubectl get ingressclass


# Apply nginx ingress setup in kubernetes cluster
kubectl apply -f eks/7-nginx-ingress

kubectl get ing -n 8-example

curl -i --header "Host: ex8.antonputra.com" http://k8s-ingress-external-6695833531-da85e3e9f56d4bec.elb.us-east-2.amazonaws.com/about

kubectl delete ns 8-example
