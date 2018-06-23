#!/bin/sh
yum install clang cmake -y
cd ~/.vim/bundle/youcompleteme/
./install.sh --clang-completer
