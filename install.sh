#!/bin/zsh

echo -e "[+] Check if git is installed..."

GIT_INSTALLED=$(which git)

if [ $? -eq 0 ] ; then echo "[+] Git is installed !"; else echo "\033[31m[-] Git is not installed !\033[00m"; return 127; fi

MAKE_INSTALLED=(which make)

if [ $? -eq 0 ] ; then echo "[+] Make is installed !"; else echo "\033[31m[-] Make is not installed !\033[00m"; return 127; fi

CLONE_REPOSITORY=$(git clone https://github.com/Unam3dd/AtmoVim.git /tmp/AtmoVim)

if [ $? -eq 0 ] ; then echo "[+] Repository has been successfully cloned !"; else echo "[-] An Error occured when cloning the repository !"; return 127; fi

echo "[+] Trying to Install AtmoVim configuration..."

INSTALL_ATMOVIM=$(cd /tmp/AtmoVim/ && make install && rm -rf /tmp/AtmoVim/)

if [ $? -eq 0 ]; then echo "[+] The AtmoVim configuration has been correctly installed !"; return 0; else echo "[-] An Error occured when installing of the AtmoVim !"; return 127; fi
