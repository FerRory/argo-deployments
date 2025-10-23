

```
k apply -k .

argocd admin initial-password -n argocd


kubectl port-forward svc/argocd-server -n argocd 8080:443

argocd login 127.0.0.1:8080

argocd account update-password


```
