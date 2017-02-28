インストール手順メモ

yum install -y vim
#yum install -y git
git clone https://github.com/ToraLin/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
yum -y install wget
cd /tmp
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y epel-release-latest-7.noarch.rpm
yum install -y python-pip
easy_install --upgrade pip
pip install flake8
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy
