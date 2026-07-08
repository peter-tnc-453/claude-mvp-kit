#!/usr/bin/env bash
# Deploy the current project to Vercel (static/frontend-only) or Railway (has a backend).
# Usage: scripts/deploy.sh vercel|railway
set -euo pipefail

PLATFORM="${1:-}"

if [[ "$PLATFORM" != "vercel" && "$PLATFORM" != "railway" ]]; then
  echo "Usage: $0 <vercel|railway>"
  echo "  vercel  - static / frontend-only project, no backend"
  echo "  railway - project has a backend (Node/Python server)"
  exit 1
fi

if [[ "$PLATFORM" == "vercel" ]]; then
  if ! command -v vercel >/dev/null 2>&1; then
    echo "vercel CLI not found. Install it first: npm i -g vercel"
    exit 1
  fi
  echo "Deploying to Vercel..."
  vercel --prod
else
  if ! command -v railway >/dev/null 2>&1; then
    echo "railway CLI not found. Install it first: npm i -g @railway/cli"
    exit 1
  fi
  echo "Deploying to Railway..."
  railway up
fi

echo
echo "Deploy command finished. Open the printed URL yourself and click the primary action —"
echo "a clean exit code is not proof the live build works."
