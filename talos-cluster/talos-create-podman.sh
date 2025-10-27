#!/bin/bash
talosctl cluster create --config-patch @patch.yaml --skip-k8s-node-readiness-check
