#!/bin/bash
set -e

PROJECT_DIR="/home/dan/code/glasshomestudio"

cd "$PROJECT_DIR"

/usr/local/bin/hugo

echo "Deploying to Cloudflare..."
/usr/bin/npx --yes wrangler pages deploy "$PROJECT_DIR/public" --project-name glass-home-studio --commit-dirty
