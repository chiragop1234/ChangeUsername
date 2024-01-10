#!/bin/bash

# Set the new hostname
new_hostname="SemlerByte-Vps"

# Update the /etc/hostname file
echo "$new_hostname" | sudo tee /etc/hostname > /dev/null

# Update the /etc/hosts file
sudo sed -i "s/127.0.1.1.*/127.0.1.1\t$new_hostname/g" /etc/hosts

# Display the updated hostname
echo "Hostname updated to: $new_hostname"

# Restart the system for changes to take effect
sudo reboot
