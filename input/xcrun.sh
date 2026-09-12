#!/bin/bash
# Inputs/xcrun.sh
# A safe wrapper for running xcrun commands with error handling.

# Exit immediately if a command exits with a non-zero status
set -e

# Function to print usage
usage() {
    echo "Usage: $0 <tool> [arguments...]"
    echo "Example: $0 simctl list devices"
    exit 1
}

# Ensure xcrun is available
if ! command -v xcrun &>/dev/null; then
    echo "Error: xcrun not found. Please install Xcode Command Line Tools."
    echo "Run: xcode-select --install"
    exit 1
fi

# Check arguments
if [ $# -lt 1 ]; then
    usage
fi

# Capture the tool and shift arguments
TOOL="$1"
shift

# Run the tool via xcrun
echo "Running: xcrun $TOOL $*"
if ! xcrun "$TOOL" "$@"; then
    echo "Error: Failed to run '$TOOL' via xcrun."
    exit 1
fi

echo "✅ Command completed successfully."
