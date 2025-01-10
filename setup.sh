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

# Set up neovim config
mkdir ~/.config/nvim && cp init.vim ~/.config/nvim

# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Swap caps and escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"

# Custom
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Increaes number of inotify watchers.
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

