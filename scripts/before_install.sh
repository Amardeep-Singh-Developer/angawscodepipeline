#!/bin/bash
set -e

cd /home/ec2-user/server

# Clean old deployment files to avoid overwrite errors
rm -rf *

# Install correct Node.js version (v20)
sudo yum remove -y nodejs npm
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo -E bash -
sudo yum install -y nodejs

# Install PM2 globally
sudo npm install pm2@latest -g

echo "✅ EC2 prepared: old files cleaned & Node v20 installed."
