# Get the latest version of the Pod Identity addon
aws eks describe-addon-versions \
    --region us-east-2 \
    --addon-name eks-pod-identity-agent

terragrunt apply

kubectl get pods -n kube-system

kubectl get daemonset eks-pod-identity-agent -n kube-system