terragrunt apply

kubectl get pods -n kube-system

kubectl logs -l app.kubernetes.io/instance=autoscaler -f -n kube-system