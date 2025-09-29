#!/bin/sh
set -e

# Logging mechanism for debugging
LOG_FILE="/tmp/nushell-install.log"
log_debug() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [DEBUG] $*" >> "$LOG_FILE"
}

# Initialize logging
log_debug "=== NUSHELL INSTALL STARTED ==="
log_debug "Script path: $0"
log_debug "PWD: $(pwd)"
log_debug "Environment: USER=$USER HOME=$HOME"

# Install Nushell from official GitHub release (prebuilt binary)
NUSHELL_VERSION="0.94.2"
NUSHELL_URL="https://github.com/nushell/nushell/releases/download/${NUSHELL_VERSION}/nu-${NUSHELL_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
INSTALL_DIR="/usr/local/bin"

curl -fsSL -o /tmp/nu.tar.gz "$NUSHELL_URL"
tar -xzf /tmp/nu.tar.gz -C /tmp
mv /tmp/nu-${NUSHELL_VERSION}-x86_64-unknown-linux-gnu/nu "$INSTALL_DIR/nu"
chmod +x "$INSTALL_DIR/nu"
echo "nushell installed: $($INSTALL_DIR/nu --version)"

log_debug "=== NUSHELL INSTALL COMPLETED ==="
# Auto-trigger build Tue Sep 23 20:03:19 BST 2025
# Auto-trigger build Sun Sep 28 03:45:40 BST 2025
# Force update Sun Sep 28 03:51:23 BST 2025
