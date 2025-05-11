#!/bin/bash
set -e

echo "☸️ Installing K3s master..."
curl -sfL https://get.k3s.io | sh -

echo "🔰 Saving token to shared folder..."
mkdir -p /vagrant/shared
cp /var/lib/rancher/k3s/server/node-token /vagrant/shared/node-token

echo "✅ K3s master is running and token is saved."


# #!/bin/bash
# # Install K3s on the master node
# curl -sfL https://get.k3s.io | sh -

# # Make sure kubectl is set up for the vagrant user
# sudo mkdir -p /home/vagrant/.kube
# sudo cp /etc/rancher/k3s/k3s.yaml /home/vagrant/.kube/config
# sudo chown -R vagrant:vagrant /home/vagrant/.kube/config

# # Get the token for the worker nodes
# TOKEN=$(sudo cat /var/lib/rancher/k3s/server/node-token)

# # Store the token for the workers to use
# echo $TOKEN > /vagrant/token