kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl port-forward svc/argocd-server -n argocd 8080:443

kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d


kubectl port-forward svc/mon-service 8000:80 &
socat TCP-LISTEN:8080,bind=192.168.50.12,fork TCP:127.0.0.1:8000

kubectl port-forward svc/argocd-server -n argocd 8088:443 & socat TCP-LISTEN:8089,bind=192.168.58.103,fork TCP:127.0.0.1:8088


curl -s https://fluxcd.io/install.sh | sudo bash

flux install \
  --components=source-controller,kustomize-controller,helm-controller \
  --namespace=flux-system


kubectl get crd | grep helmreleases

