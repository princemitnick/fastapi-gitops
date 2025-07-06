#manifest simple

argocd app create my-app \
  --repo https://github.com/<username>/<repo>.git \
  --path manifests \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default

#avec helm
argocd app create my-helm-app \
  --repo https://github.com/<username>/<repo>.git \
  --path helm-chart \
  --helm-chart my-helm-chart \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default

kubectl apply -f manifests/argocd-apps/fastapi-dev.yaml