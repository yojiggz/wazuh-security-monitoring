#!/bin/bash

# Update and install prerequisites
sudo apt-get update
sudo apt-get install -y wget curl gnupg

# Add Wazuh GPG key and repository
wget -qO - https://packages.wazuh.com/key/GPG-KEY-WAZUH | sudo tee /etc/apt/trusted.gpg.d/wazuh.gpg
echo "deb https://packages.wazuh.com/4.x/apt/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list

# Add Elastic GPG key and repository
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo tee /etc/apt/trusted.gpg.d/elasticsearch.gpg
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list

# Update package lists
sudo apt-get update

# Install Wazuh Manager, Elasticsearch, and Kibana
sudo apt-get install -y wazuh-manager elasticsearch kibana

# Start and enable services
sudo systemctl start wazuh-manager
sudo systemctl enable wazuh-manager
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl start kibana
sudo systemctl enable kibana

echo "Installation completed!"
