#!/bin/bash

set -euo pipefail

# You can specify the version here: e.g., 8, 11, 17, 21
JAVA_VERSION="${1:-17}"  # Default is OpenJDK 17

log() {
  echo -e "\033[1;32m[INFO]\033[0m $*"
}

error() {
  echo -e "\033[1;31m[ERROR]\033[0m $*" >&2
  exit 1
}

# Detect if yum or dnf is available
if command -v dnf &> /dev/null; then
  PKG_MGR="dnf"
else
  PKG_MGR="yum"
fi

log "Using package manager: $PKG_MGR"
log "Installing OpenJDK $JAVA_VERSION..."

# Update packages
sudo $PKG_MGR update -y

# Install selected OpenJDK version
case "$JAVA_VERSION" in
  8)
    sudo $PKG_MGR install -y java-1.8.0-openjdk-devel
    ;;
  11)
    sudo $PKG_MGR install -y java-11-openjdk-devel
    ;;
  17)
    sudo $PKG_MGR install -y java-17-openjdk-devel
    ;;
  21)
    sudo $PKG_MGR install -y java-21-openjdk-devel
    ;;
  *)
    error "Unsupported Java version: $JAVA_VERSION. Supported versions: 8, 11, 17, 21."
    ;;
esac

# Set JAVA_HOME
JAVA_PATH=$(dirname $(dirname $(readlink -f $(which java))))
echo "export JAVA_HOME=$JAVA_PATH" | sudo tee /etc/profile.d/java.sh
echo 'export PATH=$JAVA_HOME/bin:$PATH' | sudo tee -a /etc/profile.d/java.sh
sudo chmod +x /etc/profile.d/java.sh
source /etc/profile.d/java.sh

# Verify installation
log "Java version installed:"
java -version

log "JAVA_HOME is set to: $JAVA_HOME"
log "Java installation on RHEL completed successfully!"
