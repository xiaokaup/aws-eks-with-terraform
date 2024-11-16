# Download the metrics server into local directory
helm repo update

kubectl get pods -n kube-system

kubectl logs -l app.kubernetes.io/instance=metrics-server -n kube-system

kubectl top pods -n kube-system
kubectl top nodes -n kube-system