インストール手順メモ

cd ~/
git clone https://github.com/ToraLin/dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~.vim/bundle
easy_install pip
pip install flake8
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy


