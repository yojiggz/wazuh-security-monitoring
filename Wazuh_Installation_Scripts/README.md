# Wazuh Security Monitoring Setup Scripts

This folder contains setup scripts for installing and configuring Wazuh, Elasticsearch, and Kibana. Follow the steps below to make the provided scripts executable and to execute them.

Scripts:
toinstall-wazuh.sh: Automates the installation of Wazuh, including its built-in Indexer and Dashboard (replacing the need for separate Elasticsearch and Kibana installations).

toconfigure-wazuh.sh: (Optional) This script placeholder is intended for any additional configuration tasks you might need after installation (e.g., setting up agents, customizing rules).

manage-services.sh: Provides convenient commands to start, stop, and check the status of the Wazuh Manager service.

## Making the Scripts Executable

To make the scripts executable, navigate to the directory containing your setup scripts and run the following commands in your terminal:

```BASH
chmod +x toinstall-wazuh.sh
chmod +x toconfigure-wazuh.sh
chmod +x manage-services.sh

## Running the Scripts - Now your scripts are ready to be run. You can execute them by using the following commands:
sudo ./toinstall-wazuh.sh
sudo ./toconfigure-wazuh.sh
sudo ./manage-services.sh start

## (Optional) Configure Wazuh further  (replace ./toconfigure-wazuh.sh with your actual configuration script if you have one)
sudo ./toconfigure-wazuh.sh  # (Optional)

## Manage Wazuh services:
sudo ./manage-services.sh {start|stop|status}
