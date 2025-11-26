#!/bin/bash
talosctl cluster create --config-patch @patch.yaml --skip-k8s-node-readiness-check -p 8080:8080/tcp

helm install cilium ../cilium

cilium status --wait


kubectl apply -k ../argocd

echo "Sleep 15 seconds..."

kubectl apply -f ../argo-apps/root-app.yaml
