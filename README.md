# Wazuh Security Monitoring

## Project Overview
The project's designation, **‘wazuh-security-monitoring’**, is to assist cybersecurity users in setting up a comprehensive log analysis, visualization, and security monitoring of security events, which is essential to maintaining a robust security posture.

### Wazuh Central Components
Wazuh is built on a robust architecture that includes several central components to deliver a comprehensive security monitoring solution:
- **Wazuh Dashboard**: A web-based interface that provides visualizations, dashboards, and data exploration capabilities, allowing users to monitor their security environment efficiently.
- **Wazuh Manager**: This is the mind of Wazuh, responsible for processing data from the agents, analyzing security events, and generating alerts.
- **Wazuh Indexer**: Built on top of Elasticsearch or OpenSearch, the Wazuh Indexer stores and indexes the security event data for quick search and retrieval.

### Single Universal Agent
Wazuh agents are installed on endpoints such as laptops, desktops, servers, cloud instances, or virtual machines. These agents provide threat prevention, detection, and response capabilities by collecting and forwarding security data to the Wazuh Manager. The agents are lightweight and can run on a variety of platforms, offering:
- Intrusion detection.
- File integrity monitoring (FIM).
- Log data collection.
- Real-time monitoring of the system’s security state.

## Components
Located within the `/Wazuh_Installation_Scripts/` folder, the **‘wazuh-security-monitoring’** project includes multiple scripts and components for the configuration, management, and installation of the following tools:

### Wazuh Setup Scripts:
- **Installation Script (`toinstall-wazuh.sh`)**: Automates the Wazuh installation, including its packaged Indexer and Dashboard.
- **Configuration Script (`toconfigure-wazuh.sh`)**: Provided for additional configurations post-installation. Modify this script to install agents, define rules, or customize Wazuh according to your environment.
- **Service Management Script (`manage-services.sh`)**: Allows the user to stop, start, and check the status of services from the Wazuh Manager.

## Installation Guide
The provided scripts for the configuration and installation of Kibana, Elasticsearch, and Wazuh include step-by-step instructions in the `README.md` located in `/Wazuh_Installation_Scripts/` on making the scripts executable and how to run them. These scripts are tailored for Kali Linux, ensuring a smooth setup process.

### Download the Wazuh Agent Installer (Windows)
You can download the latest Wazuh agent MSI installer from the [official Wazuh website](https://wazuh.com/).

## Configuration Details
The `toconfigure-wazuh.sh` script sets up the configuration files tailored to integrate Kibana, Elasticsearch, and Wazuh, providing a complete security monitoring solution. Configuration details are provided to help users understand the setup.

## Troubleshooting Tips
The project will be further enhanced by incorporating a dedicated section for troubleshooting tips. This section will address common issues that users might encounter during installation or configuration.

## Improvements
- Added specific folder locations for the scripts.
- Clarified that Kibana and Elasticsearch installation scripts might not be included for Wazuh versions 4.x and above.
- Added description of 'Wazuh Central Components'
- Added reference for users to isntall the latest Wazuh agent MSI installer directly from the official Wazuh website. This ensures users can easily obtain the installer for Windows-based systems, facilitating quicker and smoother deployments of Wazuh agents on their endpoints.

## Disclaimer
The project is intended strictly for personal and educational use only. Configurations and scripts are provided based on the Wazuh Documentation and other publicly accessible resources. Users are responsible for ensuring compliance with all applicable laws and regulations when using the scripts. The author is not liable for any misuse of this project or any damages that may arise from its use.

## Reference Links
For more detailed information, please refer to the official documentation used in this project:
- [Wazuh Documentation](https://documentation.wazuh.com/)
- [Elasticsearch Documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)
- [Kibana Documentation](https://www.elastic.co/guide/en/kibana/current/index.html)
