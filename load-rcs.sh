#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# vim: noai:et:tw=80:ts=2:ss=2:sts=2:sw=2:ft=bash

# name:             load-rcs.sh
# description:      
# author:           
# date:             20200326
# version:          
# usage:            bash load-rcs.sh or ./load-rcs.sh
# notes:            
# bash_version:     5.0.11(1)-release
# ==============================================================================

setopt EXTENDED_GLOB
for rcfile in ${HOME}/.zsh/runcoms/*; do
  ln -sf "$rcfile" "${HOME}/.${rcfile:t}"
done

ln -sf ${HOME}/plugins/prezto-contrib ${HOME}/plugins/prezto/contrib
ln -sf ${HOME}/plugins/prezto ${HOME}/.zprezto

exit 0
