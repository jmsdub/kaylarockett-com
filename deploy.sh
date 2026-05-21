#!/usr/bin/env bash
# Deploy the Kayla Rockett site.
# Commits everything in this folder and pushes to GitHub -> Netlify auto-deploys.
#
#   ./deploy.sh                 # commit with a timestamp message
#   ./deploy.sh "new hero shot" # commit with your own message
#
# One-time setup (if you haven't connected GitHub yet):
#   git remote add origin git@github.com:YOURUSER/kaylarockett-com.git
#   git push -u origin main

set -euo pipefail
cd "$(dirname "$0")"

if ! git remote get-url origin >/dev/null 2>&1; then
  echo "No 'origin' remote set yet. Connect GitHub once:"
  echo "  git remote add origin git@github.com:YOURUSER/kaylarockett-com.git"
  echo "  git push -u origin main"
  exit 1
fi

msg="${1:-site update $(date '+%Y-%m-%d %H:%M')}"

git add -A
if git diff --cached --quiet; then
  echo "Nothing changed — nothing to deploy."
  exit 0
fi

git commit -m "$msg"
git push origin main
echo "Pushed to GitHub. Netlify will redeploy kaylarockett.com in ~1 minute."
