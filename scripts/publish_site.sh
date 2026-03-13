#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

branch="$(git branch --show-current)"
if [[ -z "$branch" ]]; then
  echo "Cannot publish from a detached HEAD."
  exit 1
fi

commit_message="${*:-Update site content}"

echo "Staging changes for ${branch}..."
git add -A -- .

if git diff --cached --quiet; then
  echo "No staged changes to commit."
  exit 0
fi

echo "Creating commit: ${commit_message}"
git commit -m "$commit_message"

echo "Pushing to origin/${branch}..."
git push origin "$branch"

echo "Publish complete."
