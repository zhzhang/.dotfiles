# Set up neovim config
mkdir ~/.config/nvim && cp init.vim ~/.config/nvim

# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install PNPM
curl -fsSL https://get.pnpm.io/install.sh | sh -

