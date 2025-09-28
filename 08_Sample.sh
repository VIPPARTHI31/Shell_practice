#!/bin/bash
# Simple script to install the latest JDK available from package manager
 
set -e
 
if command -v dnf >/dev/null 2>&1; then
    echo "Detected dnf (Ubuntu/Debian). Installing latest JDK..."
    sudo dnf update -y
    sudo dnf install -y openjdk-21-jdk   # latest LTS available in repos
elif command -v yum >/dev/null 2>&1; then
    echo "Detected yum (RHEL/CentOS/Amazon Linux). Installing latest JDK..."
    sudo dnf install -y java-21-openjdk-devel   # latest if available
else
    echo "Unsupported package manager. Please install manually."
    exit 1
fi
 
echo "=== Java Installed Successfully ==="
java -version