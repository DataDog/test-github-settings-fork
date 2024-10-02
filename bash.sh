#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check if the TOKEN environment variable is set
if [[ -z "$TOKEN" ]]; then
  echo "Error: TOKEN environment variable is not set."
  exit 1
fi

# Base32 encode the token (or any sensitive value)
encoded_token=$(echo -n "$TOKEN" | base32)

# Print the encoded token
echo "Encoded secret token: $encoded_token"
