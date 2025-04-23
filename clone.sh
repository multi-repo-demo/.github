#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <github_username> <target_directory>"
    echo "Example: $0 johndoe /path/to/target/directory"
    exit 1
fi

GITHUB_USER="$1"
TARGET_DIR="$2"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || exit 1

# Array of repository names
REPOS=(
    "todo-backend"
    "todo-component-library"
    "todo-frontend-app"
)

# Clone each repository from the user's fork
for repo in "${REPOS[@]}"; do
    echo "Cloning $repo from $GITHUB_USER's fork..."
    git clone "https://github.com/$GITHUB_USER/$repo"
    if [ $? -eq 0 ]; then
        echo "Successfully cloned $GITHUB_USER/$repo"
    else
        echo "Failed to clone $GITHUB_USER/$repo"
        echo "Make sure you have forked the repository and the fork exists at: https://github.com/$GITHUB_USER/$repo"
    fi
    echo "------------------------"
done

echo "All repositories have been cloned to $TARGET_DIR" 