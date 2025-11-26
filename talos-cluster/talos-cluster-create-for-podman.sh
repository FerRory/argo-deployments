#!/bin/bash
talosctl cluster create --config-patch @patch.yaml --skip-k8s-node-readiness-check -p 8080:8080/tcp

kubectl kustomize --enable-helm=true  ../cilium | kubectl apply -f -

cilium status --wait


kubectl kustomize --enable-helm=true ../argocd | kubectl apply -f -

echo "Sleep 15 seconds..."

kubectl apply -f ../argo-apps/root-app.yaml
