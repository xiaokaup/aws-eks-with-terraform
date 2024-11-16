# Download the metrics server into local directory
helm repo update

kubectl get pods -n kube-system

kubectl logs -l app.kubernetes.io/instance=metrics-server -n kube-system

kubectl top pods -n kube-system
kubectl top nodes -n kube-system


kubectl apply -f eks/2-hpa
watch -t kubectl get pods -n 3-example
watch -t kubectl get hpa -n 3-example
watch -t kubectl get svc -n 3-example
kubectl port-forward svc/myapp 8080 -n 3-example
curl "localhost:8080/api/cpu?index=44"

kubectl delete ns 3-example