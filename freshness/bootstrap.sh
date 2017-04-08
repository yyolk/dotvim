#!/usr/bin/env bash

set -x
. ./lib.sh

./00-install-plug.sh
# get vim started
prompt_continue "Install Vim Plugins?" \
    && vim +PlugInstall +qall \
    || echo "Bailing..."
