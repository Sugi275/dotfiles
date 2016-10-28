インストール手順メモ

yum -y install vim
#yum -y install git
git clone https://github.com/ToraLin/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
yum install -y python-pip
easy_install --upgrade pip
pip install flake8
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy
