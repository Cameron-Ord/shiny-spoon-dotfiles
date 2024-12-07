sudo cp contents/dnf.conf /etc/dnf/dnf.conf

sudo dnf install picom clang lldb llvm gdb gcc python python-pip nodejs npm git i3 sddm make cmake unzip ninja-build gettext curl glibc-gconv-extra dmenu tmux alacritty nano lua lua-devel

dir=$(pwd)
git clone https://github.com/neovim/neovim ~/neovim
cd ~/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install 
cd $dir

mkdir -p ~/.config/
config_dir=$HOME/.config/

sudo cp -r contents/i3 $config_dir
sudo cp -r contents/alacritty $config_dir
sudo cp -r contents/picom $config_dir
sudo cp contents/.tmux.conf $HOME

sudo cp -r contents/nvim $config_dir
cd ~/.config/nvim
pack_dir=$(pwd)/pack
if [ -d $pack_dir ]; then
 sudo rm -r $pack_dir
fi
sudo unzip pack.zip
cd $dir

mkdir -p ~/wallpapers/
cd ~/wallpapers/

curl -O https://w.wallhaven.cc/full/yx/wallhaven-yxdrex.png
cp *.png ~/wallpapers/

