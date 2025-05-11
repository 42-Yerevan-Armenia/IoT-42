#!/bin/bash
set -e

echo "☸️ Installing K3s master..."
curl -sfL https://get.k3s.io | sh -
# curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface eth1" sh -

echo "🔰 Adding hosts ..."
sudo echo "192.168.56.110 app1.com" | sudo tee -a /etc/hosts
sudo echo "192.168.56.110 app2.com" | sudo tee -a /etc/hosts
sleep 30

kubectl apply -f /vagrant/apps.yml
echo "✅ K3s master is running and token is saved."