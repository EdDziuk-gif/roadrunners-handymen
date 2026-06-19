#!/bin/bash
# Roadrunners Handymen — one-time GitHub + deploy setup
# Run this from your terminal: bash deploy-setup.sh

set -e

echo "→ Initializing git repo..."
git init
git branch -M main
git config user.email "edwarddziuk@gmail.com"
git config user.name "Ed Dziuk"

echo "→ Adding files..."
git add -A
git commit -m "Initial commit — Roadrunners Handymen site + admin portal"

echo ""
echo "✓ Local repo ready."
echo ""
echo "Next: create the GitHub repo, then run:"
echo "  git remote add origin https://github.com/EdDziuk-gif/roadrunners-handymen.git"
echo "  git push -u origin main"
echo ""
echo "Then set up Cloudflare Pages (see DEPLOY-STEPS.md in this folder)."
