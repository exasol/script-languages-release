sudo apt-get update
sudo apt-get install -y python3-pip perl python3-venv
sudo curl -L https://get.docker.com/ | bash
gpasswd -a vagrant docker
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python3 -
echo __________________________________
id
echo __________________________________
echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bash_profile
echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.poetry_path
