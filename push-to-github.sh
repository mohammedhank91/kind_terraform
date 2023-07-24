#!/bin/bash

# Display changes made to files in the working directory
status=$(git status --porcelain)

# Display changes made to files in the working directory
changes=$(git diff --name-only)

# Check if there are any changes
if [ -z "$status" ] && [ -z "$changes" ]
then
    echo "No changes to commit"
    exit 1
fi

# Print status of changes
git status

# Prompt for commit message
read -p "Enter commit message: " message

# Add all files
git add .

# Commit with message
git commit -m "$message"

# Prompt for repository name
read -p "Enter repository name: " repo_name

# Set username and password for git push
username="mohammedhank91"
password="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"

# Check if the repository exists
if ! curl --silent --head --request GET "https://api.github.com/repos/$username/$repo_name" | grep "200 OK" > /dev/null; then
    # Create a new repository
    echo "Creating repository $repo_name"
    curl -u $username:$password https://api.github.com/user/repos -d '{"name":"'$repo_name'"}'
fi

# Push changes with username and password to specified repository
git push https://$username:$password@github.com/$username/$repo_name.git
