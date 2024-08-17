# Wazuh Security Monitoring Setup Scripts

This folder contains setup scripts for installing and configuring Wazuh, Elasticsearch, and Kibana. Follow the steps below to make the provided scripts executable and to execute them.

## Making the Scripts Executable

To make the scripts executable, navigate to the directory containing your setup scripts and run the following commands in your terminal:

```bash
chmod +x toinstall-wazuh.sh
chmod +x toconfigure-wazuh.sh
chmod +x manage-services.sh

## Running the Scripts
Now your scripts are ready to be run. You can execute them by using the following commands:

sudo ./toinstall-wazuh.sh
sudo ./toconfigure-wazuh.sh
sudo ./manage-services.sh start


