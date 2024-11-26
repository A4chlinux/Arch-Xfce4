#!/bin/bash
#set -e


cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)

cp -r Personal/.config/alacritty ~/.config
cp -r Personal/.bash_logout  ~
cp -r Personal/.bashrc  ~
cp -r Personal/.dmrc  ~
cp -r Personal/.face  ~
cp -r Personal/.gtkrc-2.0 ~
cp -r Personal/.xinitrc  ~
cp -r Personal/.Xresources  ~
cp -r Personal/.xsessionrc ~
cp -r Personal/.zshrc ~
cp -r Personal/.config/xfce4 ~/.config
cp -r Personal/.config/Thunar ~/.config
cp -r Personal/.config/autostart ~/.config