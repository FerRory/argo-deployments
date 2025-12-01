# FerRory's ArgoCD Deployments

## Apps

* ArgoCD
* Cilium
* Grafana
* k8s-monitoring
* Local Path Provisioner
* Loki
* Prometheus

## Create Talos Cluster for Podman/Docker

```
cd talos-cluster
./talos-cluster-create-for-podman.sh
```

Add the below lines to /etc/hosts
```
127.0.0.1 grafana.homelab
127.0.0.1 argocd.homelab
127.0.0.1 hubble.homelab
```

## Links

* [ArgocD](http://argocd.homelab:8080)
* [Grafana](http://grafana.homelab:8080)
* [Hubble](http://hubble.homelab:8080)


## TODO

* [VictoriaMetrics K8s Stack](https://docs.victoriametrics.com/helm/victoria-metrics-k8s-stack/)
