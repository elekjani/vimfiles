#!/bin/bash

git_root=`pwd`/`dirname $0`

pushd $git_root

cd Vundle.vim
git submodule init
git submodule update
cp $git_root/.tmux.conf ~
cp $git_root/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle 2>/dev/null
cp -R $git_root/Vundle.vim/ ~/.vim/bundle
cat $git_root/.ps1 >> ~/.bashrc
vim -c VundleInstall -c "qa!"

popd
