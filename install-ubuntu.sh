#!/bin/sh

INSTALLDIR=/usr/share/vim/$(ls -l /usr/share/vim/ |grep ^d | awk '{print $9}' |grep vim)
#echo $INSTALLDIR

#install ctags cscope tool
sudo apt-get install ctags cscope

#./install.sh [plugin path] 
unzip taglist_45.zip
unzip winmanager.zip

cp cscope_maps.vim plugin/
cp -a plugin/* $INSTALLDIR/plugin/
cp -a doc/* $INSTALLDIR/doc/
cp -a colors $INSTALLDIR/

cp vimrc ~/.vimrc
cp vimindex /usr/local/bin/

rm -rf plugin
rm -rf doc
