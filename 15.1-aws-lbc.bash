terragrunt apply

kubectl get pods -n kube-system

# First example, create load balancer service with pod IPs
kubectl apply -f eks/4-lbc

kubectl get svc -n 5-example

kubectl get pods -o wide -n 5-example

curl -i http://k8s-5example-myapp-d5bf4493a2-2e9c6d78dd44e10f.elb.us-east-2.amazonaws.com:8080/about

kubectl delete ns 5-example

# Second example
kubectl get ingressclass

kubectl apply -f eks/5-lbc-second-example

kubectl get ing -n 6-example

curl -i --header "Host: ex6.antonputra.com" http://k8s-6example-myapp-c79dafe9b7-1638754451.us-east-2.elb.amazonaws.com/about

kubectl delete ns 6-example

# Third example
kubectl apply -f eks/6-lbc-third-example

kubectl get ing -n 7-example

dig ex7.antonputra.com

kubectl delete ns 7-example