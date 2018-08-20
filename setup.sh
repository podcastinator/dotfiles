
# ---------------------------------------------------------------------
# Vim
# ---------------------------------------------------------------------

# download plugin manager for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vim/vimrc ~/.vimrc

# ---------------------------------------------------------------------
# Tmux
# ---------------------------------------------------------------------

# install tmux
if [ "$(uname)" == "Darwin" ]; then
    brew install tmux
    brew install reattach-to-user-namespace
else
    sudo apt-get install tmux
fi

# download plugin manager for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux/tmux.conf ~/.tmux.conf 
~/.tmux/plugins/tpm/scripts/install_plugins.sh
