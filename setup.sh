
# ---------------------------------------------------------------------
# Vim
# ---------------------------------------------------------------------

# download plugin manager for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vim/vimrc ~/.vimrc

# Install ripgrep for CtrlP
if [ "$(uname)" == "Darwin" ]; then
    brew install ripgrep
else
    sudo apt-get install ripgrep
fi

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
    sudo apt-get install tmux
    sudo apt-get install xsel
    cp tmux/tmux-linux.conf ~/.tmux.conf
fi

# download plugin manager for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

~/.tmux/plugins/tpm/scripts/install_plugins.sh

# ---------------------------------------------------------------------
# Tex
# ---------------------------------------------------------------------

cp tex/latexmkrc ~/.latexmkrc
