## インストール手順(python有り)
```
yum install -y vim
yum install -y git
git clone https://github.com/Sugi275/dotfiles ~/dotfiles
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
```

## インストール手順(python無し)
```
yum install -y vim
yum install -y git
git clone https://github.com/Sugi275/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc_nopython ~/.vimrc
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy
```

## Git Proxy memo
```
git config --global http.proxy http://192.168.1.200:8080
git config --global https.proxy http://192.168.1.200:8080
```
