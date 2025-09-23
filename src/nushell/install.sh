#!/bin/sh
set -e

# Install Nushell from official GitHub release (prebuilt binary)
NUSHELL_VERSION="0.94.2"
NUSHELL_URL="https://github.com/nushell/nushell/releases/download/${NUSHELL_VERSION}/nu-${NUSHELL_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
INSTALL_DIR="/usr/local/bin"

curl -fsSL -o /tmp/nu.tar.gz "$NUSHELL_URL"
tar -xzf /tmp/nu.tar.gz -C /tmp
mv /tmp/nu-${NUSHELL_VERSION}-x86_64-unknown-linux-gnu/nu "$INSTALL_DIR/nu"
chmod +x "$INSTALL_DIR/nu"
echo "nushell installed: $($INSTALL_DIR/nu --version)"
# Auto-trigger build Tue Sep 23 20:03:19 BST 2025
