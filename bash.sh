#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Make sure the script is executable (this line will not be needed if permissions are set in the GitHub Actions workflow)
chmod +x ./bash.sh  # This line doesn't typically belong here; it's usually done in the workflow

# Check if the TOKEN environment variable is set
if [[ -z "$TOKEN" ]]; then
  echo "Error: TOKEN environment variable is not set."
  exit 1
fi

# Print the secret token (not recommended for production use)
echo "The secret token is: $TOKEN"
