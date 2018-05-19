# vimConfig
vim config as nvim config

cd && mkdir .config/nvim && mkdir .config/nvim/bundle && cd .config/nvim/bundle &&
cp ../../../vimConfig/init.vim ./ &&
xargs --arg-file ../../../vimConfig/vimPluginUrls -I % sh -c "git clone %"
