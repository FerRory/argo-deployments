#!/bin/bash
talosctl cluster create --config-patch @patch.yaml --workers 3 --skip-k8s-node-readiness-check -p 8080:8080/tcp

kubectl kustomize --enable-helm=true  ../cilium | kubectl apply -f -

cilium status --wait


kubectl kustomize --enable-helm=true ../argocd | kubectl apply -f -

rm -rf ../cilium/charts
echo "Sleep 60 seconds..."
sleep 60

kubectl apply -f ../argo-apps/root-app.yaml
