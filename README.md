# Prometheus and Grafana Repo

# GitHub Repositories:

* https://github.com/prometheus-community/helm-charts
* https://github.com/grafana/helm-charts


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm search repo prometheus-community
helm pull prometheus-community/prometheus --untar

helm repo add grafana https://grafana.github.io/helm-charts
helm search repo grafana
helm pull grafana/grafana --untar
