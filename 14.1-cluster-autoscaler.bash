terragrunt apply

kubectl get pods -n kube-system

kubectl logs -l app.kubernetes.io/instance=autoscaler -f -n kube-system


watch -t kubectl get nodes -n 4-example
watch -t kubectl get pods -n 4-example

kubectl apply -f eks/3-cluster-autoscaler

kubectl delete ns 4-example