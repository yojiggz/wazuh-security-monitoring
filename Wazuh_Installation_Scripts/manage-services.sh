#!/bin/bash

# Start Wazuh Manager
start_wazuh() {
  sudo systemctl start wazuh-manager
  echo "Wazuh Manager started!"
}

# Stop Wazuh Manager
stop_wazuh() {
  sudo systemctl stop wazuh-manager
  echo "Wazuh Manager stopped!"
}

# Check Wazuh Manager status
status_wazuh() {
  sudo systemctl status wazuh-manager
}

# Start Elasticsearch
start_elasticsearch() {
  sudo systemctl start elasticsearch
  echo "Elasticsearch started!"
}

# Stop Elasticsearch
stop_elasticsearch() {
  sudo systemctl stop elasticsearch
  echo "Elasticsearch stopped!"
}

# Check Elasticsearch status
status_elasticsearch() {
  sudo systemctl status elasticsearch
}

# Start Kibana
start_kibana() {
  sudo systemctl start kibana
  echo "Kibana started!"
}

# Stop Kibana
stop_kibana() {
  sudo systemctl stop kibana
  echo "Kibana stopped!"
}

# Check Kibana status
status_kibana() {
  sudo systemctl status kibana
}

# Menu options
case $1 in
  start)
    start_wazuh
    start_elasticsearch
    start_kibana
    ;;
  stop)
    stop_wazuh
    stop_elasticsearch
    stop_kibana
    ;;
  status)
    status_wazuh
    status_elasticsearch
    status_kibana
    ;;
  *)
    echo "Usage: $0 {start|stop|status}"
    exit 1
esac
