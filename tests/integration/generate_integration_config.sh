#!/bin/bash

# Navigate to the script's directory
cd "$(dirname "$0")"

# Truncate the output file
truncate -s 0 integration_config.yml

# Read the template and substitute environment variables
while read -r line; do
    eval 'echo "'"$line"'"' >> integration_config.yml
done < "integration_config.yml.tpl"

# Source the generated configuration to export variables to the environment
source integration_config.yml

# Output the generated file for verification
echo ""
echo "Generated integration_config.yml:"
echo "=>"
echo ""
cat integration_config.yml
