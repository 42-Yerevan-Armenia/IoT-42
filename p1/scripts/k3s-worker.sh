#!/bin/bash
set -e

MASTER_IP="$1"

echo "☸️ Installing K3s worker..."

# Wait for token from master node
TOKEN_FILE="/vagrant/shared/node-token"
echo "♻️ Waiting for join token..."
while [ ! -f "$TOKEN_FILE" ]; do
    sleep 5
done

TOKEN=$(cat "$TOKEN_FILE")

curl -sfL https://get.k3s.io | K3S_URL="https://${MASTER_IP}:6443" K3S_TOKEN="$TOKEN" sh -

echo "✅ Worker node has joined the cluster!"
