#!/bin/bash

# Get the list of changed files
CHANGED_FILES=$(git diff HEAD^ --name-only)

# Loop through the list of changed files
for FILE in $CHANGED_FILES; do
  if [[ "$FILE" == *"Chart.yaml"* ]]; then
    # Get the directory of the changed Chart.yaml
    DIR=$(dirname "$FILE")
    
    # Navigate to the chart directory and run helm lint
    helm lint "$DIR"
  fi
done
