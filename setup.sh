
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
sudo apt-get install tmux

# download plugin manager for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux/tmux.conf ~/.tmux.conf 
~/.tmux/plugins/tpm/scripts/install_plugins.sh
