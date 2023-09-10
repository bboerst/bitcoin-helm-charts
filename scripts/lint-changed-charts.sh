#!/bin/bash

# Get the current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$CURRENT_BRANCH" == "HEAD" ]; then
    CURRENT_BRANCH=$(git branch -a --contains HEAD | grep -E 'remotes/origin/.+' | sed 's/  remotes\/origin\///' | sed 's/->.*//')
fi

# Get the base branch name (assuming 'main' as the base branch, adjust if your base branch is different)
BASE_BRANCH="main"

echo "Current Branch: $CURRENT_BRANCH"
echo "Base Branch: $BASE_BRANCH"

# Fetch the base branch to make sure we have all the necessary data
git fetch origin $BASE_BRANCH

# Get the list of changed files compared to the base branch
CHANGED_FILES=$(git diff origin/$BASE_BRANCH...$CURRENT_BRANCH --name-only)

echo "Changed Files:"
echo "$CHANGED_FILES"

# Loop through the list of changed files
for FILE in $CHANGED_FILES; do
  if [[ "$FILE" == *"Chart.yaml"* ]]; then
    # Get the directory of the changed Chart.yaml
    DIR=$(dirname "$FILE")
    
    echo "Detected changes in Chart.yaml file at $DIR. Running helm lint..."
    
    # Navigate to the chart directory and run helm lint
    helm lint "$DIR"
  else
    echo "No changes detected in Chart.yaml files."
  fi
done
