
export CONTROL_PLANE_IP=192.168.26.131
export WORKER_IP=192.168.26.132

talosctl gen config talos-fusion-cluster https://$CONTROL_PLANE_IP:6443 --config-patch @patch.yaml --output-dir _out

talosctl apply-config --insecure --nodes $CONTROL_PLANE_IP --file _out/controlplane.yaml

talosctl apply-config --insecure --nodes $WORKER_IP --file _out/worker.yaml

export TALOSCONFIG="_out/talosconfig"
talosctl config endpoint $CONTROL_PLANE_IP
talosctl config node $CONTROL_PLANE_IP

talosctl bootstrap

talosctl kubeconfig -m
