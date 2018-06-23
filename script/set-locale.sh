#!/bin/sh
localedef -f UTF-8 -i ko_KR ko_KR.UTF-8
localedef -cvi ko_KR -f UTF-8 ko_KR.UTF-8

(echo "LANG=ko_KR.UTF-8" ;) >> $HOME/.bashrc
source $HOME/.bashrc
