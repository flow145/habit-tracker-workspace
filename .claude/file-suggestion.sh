#!/usr/bin/env bash
# @-autocomplete for the habit-tracker metarepo.
# Lists files from the outer repo and each nested repo (web-app/, backend/),
# each filtered by its own .gitignore, then fuzzy-ranks them against the query.
# Input (stdin): {"query": "..."}   Output: newline-separated paths (max 15 shown).

query=$(jq -r '.query // ""')
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/..}" || exit 0

list_repo() { # $1 = repo dir, $2 = path prefix
  git -C "$1" ls-files --cached --others --exclude-standard 2>/dev/null |
    sed "s|^|$2|"
}

{
  list_repo . ""
  for repo in web-app backend; do
    [ -d "$repo/.git" ] || [ -f "$repo/.git" ] && list_repo "$repo" "$repo/"
  done
} | awk '!seen[$0]++' | fzf --filter="$query" | head -15
