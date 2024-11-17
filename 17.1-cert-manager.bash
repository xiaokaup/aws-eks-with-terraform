terragrunt apply

kubectl get pods -n cert-manager

kubectl apply -f eks/8-nginx-ingress-with-tls

kubectl get certificate -n 9-example

kubectl describe certificate -n 9-example
kubectl describe CertificateRequest -n 9-example
kubectl describe Order -n 9-example
kubectl describe Challenge -n 9-example

kubectl get ing -n 9-example