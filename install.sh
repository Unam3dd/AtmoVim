#!/bin/zsh

echo -e "[+] Check if git is installed..."

if [ -f /usr/bin/git ]
then
    echo -e "[+] Git found !"
else
    echo -e "Please Install git"
    return 127
fi
