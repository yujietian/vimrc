#!/bin/sh

INSTALLDIR = ~/.vim
#echo $INSTALLDIR

# creare dir
mkdir $INSTALLDIR/plugin
mkdir $INSTALLDIR/doc


#install ctags cscope tool
brew install ctags
brew install cscope

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
