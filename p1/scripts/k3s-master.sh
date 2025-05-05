#!/bin/bash
set -e

echo "☸️ Installing K3s master..."
curl -sfL https://get.k3s.io | sh -

echo "🔰 Saving token to shared folder..."
mkdir -p /vagrant/shared
cp /var/lib/rancher/k3s/server/node-token /vagrant/shared/node-token

echo "✅ K3s master is running and token is saved."
