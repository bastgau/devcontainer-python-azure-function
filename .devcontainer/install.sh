#!/bin/bash

sudo chgrp vscode /workspaces/app/.venv
sudo chown vscode /workspaces/app/.venv

sudo apt-get update
sudo apt-get install ffmpeg libsm6 libxext6 -y

python3 -m venv /workspaces/app/.venv
PATH="/workspaces/app/.venv/bin:$PATH"

source /workspaces/app/.venv/bin/activate
pip install --upgrade pip
# pip install keyring artifacts-keyring

# cat <<EOF >> /workspaces/app/.venv/pip.conf
# [global]
# extra-index-url=https://pkgs.dev.azure.com/...
# EOF

pip install -r /workspaces/app/requirements-dev.txt
pip install -r /workspaces/app/requirements.txt
