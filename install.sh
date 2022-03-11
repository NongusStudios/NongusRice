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

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p $HOME/.config/nvim/undodir
ln -sf $PWD/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $PWD/nvim/coc-settings.json $HOME/.config/nvim/coc-settings.json

ln -sf $PWD/.xinitrc $HOME/.xinitrc

clear
echo "Last Steps!"
echo "    1) Add NongusRice/bin and NongusRice/bin/statusbar to your PATH."
echo "    2) Enter nvim and run PlugInstall."
