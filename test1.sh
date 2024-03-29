#!/bin/bash

#this a random comment
# Add all changes
git add .

# Get the commit message from the last commit in the Gerrit branch
commitMessage=$(git log --format=%B -n 1 master)

# Get the name of the Gerrit branch
branch=$(git rev-parse --abbrev-ref HEAD)

# Commit changes with the same message as the last commit in the Gerrit branch
git commit -m "$commitMessage"

# Push changes to the same branch in the GitHub repository
git push origin "$branch"

# Optional: Pause the script before exiting
read -rp "Press Enter to exit..."

#Hello 
