#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# vim: noai:et:tw=80:ts=2:ss=2:sts=2:sw=2:ft=zsh

# Title:            clone_plugins.zsh
# Description:      Clone ZSH plugin repos
# Author:           Ricky Laney
# Version:          0.1.0
# ==============================================================================

MY_PLUGIN_DIR="${HOME}/.zsh/plugins"
MY_PREZTO_DIR="${HOME}/.zsh/plugins/prezto"
cd $MY_PLUGIN_DIR
git clone --recursive https://github.com/sorin-ionescu/prezto
git clone --recurse-submodules https://github.com/belak/prezto-contrib
git clone https://github.com/yonchu/vimman
git clone https://github.com/mfaerevaag/wd
git clone https://github.com/yonchu/zsh-python-prompt
ln -sf "${MY_PLUGIN_DIR}/prezto-contrib" "${MY_PREZTO_DIR}/contrib"
