#!/bin/bash
set -e

cd /home/ec2-user/server/dist/stolt

# Install dependencies
npm install

# Start Angular SSR server in background
nohup PORT=4000 HOST=0.0.0.0 node --experimental-specifier-resolution=node server/main.server.mjs > /home/ec2-user/server/serve.log 2>&1 &

echo "✅ Angular Universal SSR app started"
exit 0
