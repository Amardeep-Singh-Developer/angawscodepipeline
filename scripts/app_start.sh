#!/bin/bash
set -e

cd /home/ec2-user/server/dist/stolt

# Install dependencies
npm install

# Start SSR server in background
nohup node server/main.js > /home/ec2-user/server/serve.log 2>&1 &

echo "✅ Angular Universal SSR app started"
exit 0
