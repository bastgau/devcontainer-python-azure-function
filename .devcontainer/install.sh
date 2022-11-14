python3 -m venv .venv
mkdir -p /home/vscode/.local/lib/python3.9/
ln -s ./.venv/lib/python3.9/site-packages/ /home/vscode/.local/lib/python3.9/site-packages
source .venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
