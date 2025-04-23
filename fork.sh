#!/bin/bash

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo "GitHub CLI (gh) is not installed. Please install it first:"
    echo "  - MacOS: brew install gh"
    echo "  - Linux: sudo apt install gh"
    echo "  - Windows: winget install GitHub.cli"
    exit 1
fi

# Check if logged in to GitHub CLI
if ! gh auth status &> /dev/null; then
    echo "Please login to GitHub CLI first using: gh auth login"
    exit 1
fi

# Array of repositories to fork
REPOS=(
    "multi-repo-demo/todo-backend"
    "multi-repo-demo/todo-component-library"
    "multi-repo-demo/todo-frontend-app"
)

# Fork each repository
for repo in "${REPOS[@]}"; do
    echo "Forking $repo..."
    gh repo fork "$repo" --clone=false
    if [ $? -eq 0 ]; then
        echo "Successfully forked $repo"
    else
        echo "Failed to fork $repo"
    fi
    echo "------------------------"
done

echo "All repositories have been forked to your GitHub account"
echo "You can now clone them using the clone.sh script" 