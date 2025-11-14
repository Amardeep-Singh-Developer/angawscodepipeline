#!/bin/bash
set -e

# Go to project folder
cd /home/ec2-user/server

# Remove old dependencies and builds (optional)
rm -rf node_modules
rm -rf dist

# Install required dependencies
npm install

# Build the Angular app
npm run build --prod

echo "✅ Angular build completed successfully."
