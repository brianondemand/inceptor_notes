#!/bin/bash

# Define the repository path (current script directory)
repoPath=$(dirname "$(realpath "$0")")

# Function to display a header
display_header() {
    echo "--------------------------------------------"
    echo " GITHUB PILOT - Your Sync Assistant "
    echo "--------------------------------------------"
}

# Function to check and pull updates from the remote repository
pull_updates() {
    echo "Fetching updates..."
    git fetch

    if git status | grep -q "Your branch is behind"; then
        echo "Updates available. Pulling latest changes..."
        git pull --rebase
    else
        echo "No updates available. The repository is up-to-date."
    fi
}

# Start script execution
display_header

# Change to the repository directory
echo "Changing to repository directory..."
cd "$repoPath" || { echo "Failed to change directory"; exit 1; }

# Step 1: Check if the current repository matches the remote
echo "Checking Github repository..."
remote_url=$(git remote get-url origin)
if [[ "$remote_url" != "git@github.com:brianondemand/inceptor_notes.git" ]]; then
    echo "ERROR: The current repository does not match the expected GitHub repo."
    read -p "Press Enter to exit..."
    exit 1
fi
echo "Github repository matches!"

# Step 2: Fetch and pull updates if available
pull_updates

# Step 3: Check for local changes
echo "Checking for local changes..."
git status

# Step 4: Add all modified files except .obsidian/workspace.json
echo "Adding changes to staging area..."
git add .
git reset .obsidian/workspace.json

# Step 5: Commit changes
commit_message="Updates Via Github Pilot"
echo "Committing changes..."
git commit -m "$commit_message"

# Step 6: Push changes to the GitHub repository
echo "Pushing changes to GitHub repository..."
git push

echo "Your work has been pushed to GitHub!"

# Keep the terminal open
read -p "Press Enter to close the terminal."
