#!/bin/bash

# Configure Wazuh
sudo bash -c 'cat > /var/ossec/etc/ossec.conf <<EOF
<ossec_config>
  <cluster>
    <name>wazuh-cluster</name>
    <node_type>master</node_type>
  </cluster>
  <syscheck>
    <enabled>yes</enabled>
  </syscheck>
  <localfile>
    <log_format>syslog</log_format>
    <location>/var/log/syslog</location>
  </localfile>
</ossec_config>
EOF'

# Restart Wazuh to apply configuration
sudo systemctl restart wazuh-manager

echo "Wazuh configuration completed!"
