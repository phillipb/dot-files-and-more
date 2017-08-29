#!/bin/sh

files=$(ls -al | grep '^-' | awk '{print $9}')

for file in $files
do
    if [ "$file" == "setup.sh" ]; then
        break
    fi
    ln -s $(pwd)/$file $HOME/$file
done

