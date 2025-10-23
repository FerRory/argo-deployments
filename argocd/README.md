

```
k apply -k .

argocd admin initial-password -n argocd


kubectl port-forward svc/argocd-server -n argocd 8080:443

argocd login

argocd account update-password


```
