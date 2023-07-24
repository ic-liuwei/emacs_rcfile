#!/bin/sh
current_date="`date +%Y-%m-%d_%H-%M-%S`"
function link_file(){
    if [ -e ~/.$1 ] 
    then
	echo ".$1 file exists, copy as .$1.bak.$current_date"
	mv ~/.$1 ~/.$1.bak.$current_date
	ln -s `pwd`/$1 ~/.$1
    else
	echo ".$1 file do not exists"
	ln -s `pwd`/$1 ~/.$1
    fi
    echo ".$1 file link finish"
}

echo "current data :$current_date"
echo "file link start..."
link_file cshrc
link_file emacs
link_file emacs.d
echo "all file link finish"
