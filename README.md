# vimConfig as nvim config

clone this into ~/ or cd

```
cd && mkdir .config/nvim && mkdir .config/nvim/bundle && cd .config/nvim &&
cp ../../../vimConfig/init.vim ./ && cd bundle &&
xargs --arg-file ../../../vimConfig/vimPluginUrls -I % sh -c "git clone %"

mkdir ~/.config/nvim/autoload/ && curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
# install deoplete
change to bundle directory
```
git clone https://github.com/Shougo/deoplete.nvim.git
yaourt -S python-pip
pip3 install --user neovim
```

put this into your init.vim
```
set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
```
# install clipboard

sudo pacman -S xclip

then put this into your init.vim
```
let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }
```
