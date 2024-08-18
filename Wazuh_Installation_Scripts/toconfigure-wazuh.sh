#!/bin/bash

# Function to configure Wazuh with provided parameters
configure_wazuh() {
  local cluster_name="$1"
  local node_type="$2"

  cat > /var/ossec/etc/ossec.conf <<EOF
<ossec_config>
  <cluster>
    <name>$cluster_name</name>
    <node_type>$node_type</node_type>
  </cluster>
  <syscheck>
    <enabled>yes</enabled>
  </syscheck>
  <localfile>
    <log_format>syslog</log_format>
    <location>/var/log/syslog</location>
  </localfile>
</ossec_config>
EOF

  sudo systemctl restart wazuh-manager
  echo "Wazuh configuration completed!"
}

# Usage: ./toconfigure-wazuh.sh <cluster_name> <node_type>
# Example: ./toconfigure-wazuh.sh my-cluster member

# Check for arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <cluster_name> <node_type>"
  exit 1
fi

# Call the configuration function with arguments
configure_wazuh "$1" "$2"
