cd ~

# download plugin manager for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# download solarized color scheme for vim
wget http://ethanschoonover.com/solarized/files/solarized.zip
unzip solarized.zip
mkdir .vim
mkdir .vim/colors/
mv solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
curl https://raw.github.com/seebi/dircolors-solarized/master/dircolors.256dark > ~/.dircolors
source .bashrc
rm -r solarized
rm solarized.zip
