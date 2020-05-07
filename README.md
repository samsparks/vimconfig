Holds my vim/neovim configuration, and allows synchonization across many servers.

# Installation

* Clone this repository into the directory `~/.vim`.

```sh
git clone https://github.com/samsparks/vimconfig.git ~/.vim
```

* Install Vundle

```sh
cd ~/.vim
git -C bundle clone https://github.com/VundleVim/Vundle.vim.git
```

* For neovim support
```sh
mkdir -p ~/.config/nvim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
```

* Install all plugins
```sh
vim +PluginInstall  # if using vim
nvim +PluginInstall # if using nvim
```
