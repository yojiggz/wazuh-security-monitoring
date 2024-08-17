#!/bin/bash

# Function to start all services
start_services() {
    echo "Starting Wazuh, Elasticsearch, and Kibana services..."
    sudo systemctl start wazuh-manager
    sudo systemctl start elasticsearch
    sudo systemctl start kibana
    echo "Services started."
}

# Function to stop all services
stop_services() {
    echo "Stopping Wazuh, Elasticsearch, and Kibana services..."
    sudo systemctl stop wazuh-manager
    sudo systemctl stop elasticsearch
    sudo systemctl stop kibana
    echo "Services stopped."
}

# Function to check the status of all services
status_services() {
    echo "Checking the status of Wazuh, Elasticsearch, and Kibana services..."
    echo "Wazuh Manager:"
    sudo systemctl status wazuh-manager
    echo "Elasticsearch:"
    sudo systemctl status elasticsearch
    echo "Kibana:"
    sudo systemctl status kibana
}

# Check command-line arguments
case "$1" in
    start)
        start_services
        ;;
    stop)
        stop_services
        ;;
    status)
        status_services
        ;;
    *)
        echo "Usage: $0 {start|stop|status}"
        exit 1
        ;;
esac
