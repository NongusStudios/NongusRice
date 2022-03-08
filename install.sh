cd dwm
sudo make clean install
cd ../dwmblocks
sudo make clean install
cd ../st
sudo make clean install
cd ..

mkdir -p $HOME/.config/dunst
ln -sf $PWD/dunst/dunstrc $HOME/.config/dunst/dunstrc

mkdir -p $HOME/.config/lf
ln -sf $PWD/lf/lfrc $HOME/.config/lf/lfrc

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p $HOME/.vim/undodir
ln -sf $PWD/.vimrc $HOME/.vimrc

ln -sf $PWD/.xinitrc $HOME/.xinitrc

clear
echo "Last Steps!"
echo "    1) Add NongusRice/bin and NongusRice/bin/statusbar to your PATH."
echo "    2) Enter vim and run PlugInstall."
