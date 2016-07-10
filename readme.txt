インストール手順メモ

cd ~/
git clone https://github.com/ToraLin/dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy


