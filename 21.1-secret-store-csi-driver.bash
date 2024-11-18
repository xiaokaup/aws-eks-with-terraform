terragrunt apply

kubectl logs -l app.kubernetes.io/component=csi-driver -n kube-system -f

kubectl logs -l app.kubernetes.io/instance=secrets-store-csi-driver -n kube-system -f


kubectl apply -f eks/11-secret-store-csi-driver

kubectl get pods -n 12-example

kubectl exec -it -n 12-example <pod_id> -- bash
kubectl exec -it -n 12-example myapp-7586b85655-77d7v -- bash

kubectl delete ns 12-example