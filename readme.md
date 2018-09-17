## インストール手順(python用IDE)
```
yum install -y vim git
git clone https://github.com/Sugi275/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc_python ~/.vimrc
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

## インストール手順(go用IDE)
```
yum install -y vim git
git clone https://github.com/Sugi275/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc_go ~/.vimrc
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy
vimの画面で :GoInstallBinaries コマンドを実行し、vim-go で必要なパッケージ群をインストール
```

## インストール手順(IDE無し)
```
yum install -y vim git
git clone https://github.com/Sugi275/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.vimrc_general ~/.vimrc
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
→インストールを聞かれるのでy
```



## Git Proxy memo
```
git config --global http.proxy http://192.168.1.200:8080
git config --global https.proxy http://192.168.1.200:8080
```
