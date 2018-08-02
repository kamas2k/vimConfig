# vimConfig
vim config as nvim config

glone this into ~/ or cd

cd && mkdir .config/nvim && mkdir .config/nvim/bundle && cd .config/nvim &&
cp ../../../vimConfig/init.vim ./ && cd bundle &&
xargs --arg-file ../../../vimConfig/vimPluginUrls -I % sh -c "git clone %"
