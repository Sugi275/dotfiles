インストール手順メモ

yum -y install vim
#yum -y install git
git clone https://github.com/ToraLin/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
easy_install pip
pip install flake8
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy
