#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check if the TOKEN environment variable is set
if [[ -z "$TOKEN" ]]; then
  echo "Error: TOKEN environment variable is not set."
  exit 1
fi

# Print the secret token (not recommended for production use)
echo "The secret token is: $TOKEN"
