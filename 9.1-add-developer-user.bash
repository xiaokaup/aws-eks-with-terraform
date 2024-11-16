kubectl apply -f eks/1-rbac


# Update .kube/config credentials with the new EKS cluster
aws eks update-kubeconfig --region us-east-2 --name staging-demo --profile developer

kubectl config view --minify

kubectl get pods

kubectl auth can-i get pods # yes
kubectl auth can-i create pods # no

kubectl get nodes
kubectl auth can-i get nodes # yes

kubectl auth can-i '*' '*' # no