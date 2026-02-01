#!/bin/bash

# List of all remotes
remotes=$(git remote)

# Branch to push
branch=$(git branch --show-current)

# Push to all remotes
for remote in $remotes; do
    echo "Pushing to $remote..."
    git push -u $remote $branch
done

echo "Push to all remotes completed."
