
# ---------------------------------------------------------------------
# (Neo)vim
# ---------------------------------------------------------------------

# Install ripgrep for CtrlP
# Install nvim
if [ "$(uname)" == "Darwin" ]; then
    brew install ripgrep
    brew install neovim
else
    sudo apt-get install -y software-properties-common
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install -y ripgrep
    sudo apt-get install -y neovim
fi

# download plugin manager for vim
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# download plugin manager for nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#cp vim/vimrc ~/.vimrc

mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/after/ftplugin
cp nvim/init.vim ~/.config/nvim/init.vim
cp nvim/c.vim ~/.config/nvim/after/ftplugin/c.vim
cp nvim/c.vim ~/.config/nvim/after/ftplugin/cpp.vim


# ---------------------------------------------------------------------
# Git
# ---------------------------------------------------------------------

cp git/gitconfig ~/.gitconfig

# ---------------------------------------------------------------------
# Tmux
# ---------------------------------------------------------------------

# install tmux
if [ "$(uname)" == "Darwin" ]; then
    brew install tmux
    brew install reattach-to-user-namespace
    cp tmux/tmux-macos.conf ~/.tmux.conf
else
    sudo apt-get install -y tmux
    sudo apt-get install -y xsel
    cp tmux/tmux-linux.conf ~/.tmux.conf
fi

# download plugin manager for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

~/.tmux/plugins/tpm/scripts/install_plugins.sh

# ---------------------------------------------------------------------
# Tex
# ---------------------------------------------------------------------

cp tex/latexmkrc ~/.latexmkrc

# ---------------------------------------------------------------------
# Bash
# ---------------------------------------------------------------------

cat bash/bashrc >> ~/.bashrc
cat bash/bash_profile >> ~/.bash_profile
cat bash/inputrc >> ~/.inputrc

