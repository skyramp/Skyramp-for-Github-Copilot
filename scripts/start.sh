#!/bin/bash

# install skyramp
yes | bash -c "$(curl -fsSL https://skyramp.dev/installer.sh)"

# install skyramp worker and dashboard
skyramp dashboard up -d || true

# start skyramp  server
nohup skyramp server up -vvv &

# open public port for skyramp dashboard
gh codespace ports visibility 4000:public -c $CODESPACE_NAME
gh codespace ports visibility 3000:public -c $CODESPACE_NAME

# install python requirements
curl -o /etc/skyramp/requirements.txt https://raw.githubusercontent.com/letsramp/Skyramp-for-Github-Copilot/main/scripts/requirements.txt
chmod +x /etc/skyramp/requirements.txt
/usr/local/python/current/bin/pip install -r /etc/skyramp/requirements.txt
