# APT
apt update
apt install -y make \
  gcc \
  curl \
  tmux \
  neovim \
  python3-pip \
  git \
  ruby-all-dev \
  silversearcher-ag

apt install build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

./vim-setup.sh

# Swap caps and escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"

# Custom
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Increaes number of inotify watchers.
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

