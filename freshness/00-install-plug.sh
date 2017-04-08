#!/usr/bin/env bash
. ./lib.sh


prompt_continue "This will install plug at ~/.vim/autoload/plug.vim" && curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
        || echo "Bailing..."
        

