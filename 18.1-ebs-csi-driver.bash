terragrunt apply

# Update kubeconfig (optional)
aws eks update-kubeconfig --region us-east-2 --name staging-demo

kubectl apply -f eks/9-ebs-csi-driver/

kubectl get pods -n 10-example

# pvc: Persistent Volume Claim
kubectl get pvc -n 10-example

kubectl describe pvc data-myapp-0 -n 10-example

kubectl delete ns 10-example