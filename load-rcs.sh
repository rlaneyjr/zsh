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

ZDOTDIR=${HOME}/.zsh
setopt EXTENDED_GLOB
for rcfile in ${HOME}/.zsh/runcoms/*; do
  ln -s "$rcfile" "${ZDOTDIR}/.${rcfile:t}"
done

#ln -s ${ZDOTDIR}/plugins/prezto-contrib ${ZDOTDIR}/plugins/prezto/contrib
