#!/bin/bash

# Get the current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$CURRENT_BRANCH" == "HEAD" ]; then
    CURRENT_BRANCH=$(git branch -a --contains HEAD | grep -E 'remotes/origin/.+' | head -n 1 | sed 's/  remotes\/origin\///')
fi

BASE_BRANCH="master"

echo "Current Branch: $CURRENT_BRANCH"
echo "Base Branch: $BASE_BRANCH"

# Fetch the base branch to make sure we have all the necessary data
git fetch origin $BASE_BRANCH

if [ $? -ne 0 ]; then
    echo "Failed to fetch base branch ($BASE_BRANCH). Please check if the base branch name is correct."
    exit 1
fi

# Get the list of changed files compared to the base branch
CHANGED_FILES=$(git diff origin/$BASE_BRANCH...$CURRENT_BRANCH --name-only)

if [ $? -ne 0 ]; then
    echo "Failed to get the list of changed files. Please check if the branch names are correct."
    exit 1
fi

echo "Changed Files:"
echo "$CHANGED_FILES"

# Initialize a flag to check if any Chart.yaml file was changed
CHART_YAML_CHANGED=false

# Loop through the list of changed files
for FILE in $CHANGED_FILES; do
  if [[ "$FILE" == charts/*"Chart.yaml"* ]]; then
    # Get the directory of the changed Chart.yaml
    DIR=$(dirname "$FILE")
    
    echo "Detected changes in Chart.yaml file at $DIR. Running helm lint..."
    
    # Update dependencies before linting
    helm dependency update "$DIR"

    # Navigate to the chart directory and run helm lint
    helm lint "$DIR"
    
    if [ $? -ne 0 ]; then
        echo "Helm lint found issues in the chart at $DIR. Failing the workflow..."
        exit 1
    fi
    
    # Set the flag to true as a Chart.yaml file was changed
    CHART_YAML_CHANGED=true
  fi
done

if [ "$CHART_YAML_CHANGED" == "false" ]; then
    echo "No changes detected in Chart.yaml files."
fi
