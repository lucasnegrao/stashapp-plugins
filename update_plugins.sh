#!/usr/bin/env bash

set -euo pipefail

repo_root=$(git rev-parse --show-toplevel)
cd "$repo_root"

commit_changes=false
if [[ "${1:-}" == "--commit" ]]; then
    commit_changes=true
    shift
fi

if [[ "$#" -ne 0 ]]; then
    echo "Usage: $0 [--commit]" >&2
    exit 2
fi

git submodule sync --recursive
git submodule update --init --remote --recursive

if git diff --quiet --submodule=short -- plugins; then
    echo "All plugins are already current."
    exit 0
fi

echo "Updated plugin pointers:"
git status --short -- plugins

if [[ "$commit_changes" == true ]]; then
    git config user.name "github-actions[bot]"
    git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
    git add plugins
    git commit -m "Update plugin submodules"
    git push origin HEAD:main
else
    git add plugins
    git commit -m \"Update plugins\"
    git push
fi
