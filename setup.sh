# APT
apt update
apt install vim
apt install pip3
apt install git
apt install ruby-all-dev

# Python packages
pip3 install \
  numpy \
  pylint \
  flake8 \
  black

# Custom
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Increaes number of inotify watchers.
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

