# vimConfig
vim config as nvim config

glone this into ~/ or cd

cd && mkdir .config/nvim && mkdir .config/nvim/bundle && cd .config/nvim &&
cp ../../../vimConfig/init.vim ./ && cd bundle &&
xargs --arg-file ../../../vimConfig/vimPluginUrls -I % sh -c "git clone %"

 mkdir ~/.config/nvim/autoload/ && curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
 
 
# change to bundle directory
# git clone https://github.com/Shougo/deoplete.nvim.git
# yaourt -S python-pip
# pip3 install --user neovim

# put this into your init.vim

set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
