# APT
apt update
apt install vim
apt install pip
apt install git
apt install ruby-all-dev

# Python packages
pip install numpy

# Custom
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Increaes number of inotify watchers.
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

