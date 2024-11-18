terragrunt init
terragrunt apply

kubectl get pods -n kube-system

kubectl logs -l app.kubernetes.io/instance=aws-efs-csi-driver -n kube-system -f


kubectl apply -f eks/10-efs-csi-driver

kubectl get pods -n 11-example

kubectl get pvc -n 11-example

kubectl delete ns 11-example
