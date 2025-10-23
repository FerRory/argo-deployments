# FerRory's ArgoCD Deployments

## GitHub Repositories:

* https://github.com/prometheus-community/helm-charts
* https://github.com/grafana/helm-charts

```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm search repo prometheus-community
helm pull prometheus-community/prometheus --untar

helm repo add grafana https://grafana.github.io/helm-charts
helm search repo grafana
helm pull grafana/grafana --untar
```

## Create Talos Cluster for Podman/Docker

```
cd talos-cluster
./talos-create.sh
```

Install Cilium
```
helm install cilium ./cilium
```

Install ArgoCD
```
cd argocd
k apply -k .
```
Follow README.md under argocd.

Apply root-app.yaml to install Apps.
```
cd argo-apps
k apply -f root-app.yaml
```



