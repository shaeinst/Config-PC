#! /usr/bin/sh


CACHE="$HOME/.cache"
CONFIG="$HOME/.config"

today_date=`date "+%Y-%m-%d_%T"`
current_dir="$PWD"

# create required directories
echo "creating required directories"

if [ ! -d "$CACHE/zsh" ]; then
  mkdir "$CACHE/zsh" && echo "$CACHE/zsh"
fi

if [ ! -f $CACHE/history ]; then
  touch "$CACHE/zsh/history" && echo "$CACHE/zsh/history"
fi


if [ ! -f $CONFIG/aliasrc ]; then
  touch "$CONFIG/aliasrc" && echo "$CONFIG/aliasrc"
fi


if [ -d "$CONFIG/zsh" ]; then
  mv $CONFIG/zsh "$CONFIG/zsh_$today_date"
fi
if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc_$today_date
fi

cp $current_dir $CONFIG/ -r
link .zshrc ~/.zshrc

