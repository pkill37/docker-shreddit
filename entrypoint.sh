#!/bin/sh
set -euo pipefail

# Ask for account details
echo "Get account details at https://www.reddit.com/prefs/apps/..."
read -p "client_id: " client_id
read -p "client_secret: " client_secret
read -p "username: " username
read -p "password: " password

# Generate config files
shreddit -g

# Write config file
cat > praw.ini <<EOL
[default]
client_id=$client_id
client_secret=$client_secret
username=$username
password=$password
EOL

# Wipe
shreddit

# Cleanup
rm praw.ini shreddit.yml

