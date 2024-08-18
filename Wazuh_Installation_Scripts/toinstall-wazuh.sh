#!/bin/bash

# Update and install prerequisites
sudo apt-get update
sudo apt-get install -y wget curl gnupg

# Add Wazuh GPG key and repository (**Updated for latest version**)
wget -qO - https://packages.wazuh.com/key/GPG-KEY-WAZUH | sudo tee /etc/apt/trusted.gpg.d/wazuh.gpg
echo "deb https://packages.wazuh.com/4.3.x/apt/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list  # Update version as needed (check https://packages.wazuh.com for latest)

# Remove Elastic and Kibana repositories (Wazuh Indexer replaces them)
sudo rm /etc/apt/sources.list.d/elastic-*.list   # Remove existing entries

# Update package lists
sudo apt-get update

# Install Wazuh Manager (including Indexer and Dashboard)
sudo apt-get install -y wazuh-manager

# Start and enable services
sudo systemctl start wazuh-manager
sudo systemctl enable wazuh-manager

echo "Wazuh installation completed!"
