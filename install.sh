sudo cp contents/dnf.conf /etc/dnf/dnf.conf

sudo dnf install picom clang lldb llvm gdb gcc python python-pip nodejs npm git i3 sddm make cmake unzip ninja-build gettext curl glibc-gconv-extra dmenu tmux alacritty nano lua lua-devel

dir=$(pwd)
git clone git clone https://github.com/neovim/neovim ~/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install 
cd $dir

cp -r contents/i3 ~/.config/
cp -r contents/alacritty ~/.config/
cp -r contents/picom ~/.config/
cp contents/.tmux.conf ~/

cp -r contents/nvim ~/.config/
cd ~/.config/nvim && sudo unzip pack.zip
cd $dir

mkdir -p ~/wallpapers
cd ~/wallpapers

curl -O https://w.wallhaven.cc/full/yx/wallhaven-yxdrex.png
cp *.png ~/wallpapers/

sudo systemctl enable sddm
sudo systemctl start sddm

