#!/bin/bash

cd /workspaces/admin1

if git add .; then
    git commit -m "Auto-commit on $(date)" || echo "No changes to commit"
    git push -u origin master --force || echo "Failed to push changes"
else
    echo "Failed to add changes"
fi
