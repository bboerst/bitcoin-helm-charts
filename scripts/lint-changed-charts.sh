#!/bin/bash

# Get the base branch (you may adjust this part as per your repo settings to get the correct base branch)
BASE_BRANCH=$(git rev-parse --abbrev-ref HEAD | sed 's/HEAD//')

# Get the list of changed files compared to the base branch
CHANGED_FILES=$(git diff $BASE_BRANCH...HEAD --name-only)

# Loop through the list of changed files
for FILE in $CHANGED_FILES; do
  if [[ "$FILE" == *"Chart.yaml"* ]]; then
    # Get the directory of the changed Chart.yaml
    DIR=$(dirname "$FILE")
    
    # Navigate to the chart directory and run helm lint
    helm lint "$DIR"
  fi
done
