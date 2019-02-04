#!/bin/bash
dirs=(
  '.atom'
)
files=(
  '.gemrc'
  '.gitconfig'
  '.vimrc'
  '.zshrc'
)

for dir in "${dirs[@]}"; do
  if [ -d $HOME/$dir ]; then
  read -p "Replace existing directory $HOME/$dir with $PWD/$dir?" -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
      mv $HOME/$dir $HOME/"$dir".old
      ln -sf $PWD/$dir $HOME/$dir
  fi
  else
    ln -sf $PWD/$dir $HOME/$dir
  fi
done

for file in "${files[@]}"; do
  if [ -f $HOME/$file ]; then
    read -p "Replace existing $HOME/$file with $PWD/$file?" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Wrote $PWD/$file to $HOME/$file."
        ln -sf $PWD/$file $HOME/$file
    fi
  else
    echo "Wrote $PWD/$file to $HOME/$file."
    ln -sf $PWD/$file $HOME/$file
  fi
done
