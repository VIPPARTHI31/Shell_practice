#!/bin/bash
# Script to install Java on Ubuntu/Debian
 
# Update system packages
echo "Updating package list..."
sudo dnf update -y
 
# Install default JDK (Java Development Kit)
echo "Installing Java JDK..."
sudo yum install -y temurin-21-jdk
 
# Verify installation
echo "Java version installed:"
java --version
 
echo "Java installation completed successfully!"

