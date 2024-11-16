# Update .kube/config credentials with the new EKS cluster
aws eks update-kubeconfig --region us-east-2 --name staging-demo

# Check the access to the cluster
kubectl get nodes

# Check the all read and write access to the cluster
kubectl auth can-i '*' '*' --all-namespaces