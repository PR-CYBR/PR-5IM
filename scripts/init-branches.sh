#!/bin/bash
# Initialize branches for PR-5IM branching strategy
# This script creates all required branches as defined in BRANCHING.md

set -e

echo "Initializing PR-5IM branches according to branching strategy..."

# Array of branches to create
branches=(
    "spec"
    "plan"
    "design"
    "impl"
    "dev"
    "test"
    "stage"
    "prod"
    "pages"
    "gh-pages"
    "codex"
)

# Get the current branch
current_branch=$(git rev-parse --abbrev-ref HEAD)
echo "Current branch: $current_branch"

# Create each branch if it doesn't exist
for branch in "${branches[@]}"; do
    if git show-ref --verify --quiet refs/heads/$branch; then
        echo "✓ Branch '$branch' already exists"
    else
        echo "Creating branch '$branch'..."
        git branch $branch
        echo "✓ Created branch '$branch'"
    fi
done

echo ""
echo "Branch initialization complete!"
echo ""
echo "To push all branches to remote, run:"
echo "  git push origin --all"
echo ""
echo "Note: The 'main' branch should be created through the normal PR process."
