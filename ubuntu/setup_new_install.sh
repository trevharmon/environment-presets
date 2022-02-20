#!/bin/bash

URL_VIMRC='https://raw.githubusercontent.com/trevharmon/environment-presets/master/vim/.vimrc'

echo '#### Setting up a new Ubuntu install ###'
sudo echo # Want to authorize sudo before starting the rest of the process
echo '--- Install packages ---'
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install \
    curl \
    git \
    gnupg \
    lsb-release \
    tree \
    wget \
    ;

echo
echo '--- Setup `git` ---'
#sudo apt install git
read -p "Setup git user for $(whoami)? (y/n)" yn
while true; do
    if [[ $yn == 'y' ]]; then
        while true; do
            echo "Name to use for git?"
            read GITNAME
            echo "Email to use for git?"
            read GITEMAIL
            echo "The following will be used for $(whoami)'s \`git\` install?"
            echo "    Name:  ${GITNAME}"
            echo "    Email: ${GITEMAIL}"
            read -p 'Is this correct? (y/n)' yn
            if [[ $yn == 'y' ]]; then
                break
            elif [[ $yn == 'Y' ]]; then
                break
            fi
        done
        break
    elif [[ $yn == 'n' ]]; then
       break
    fi
done
if [[ $GITNAME ]]; then
    git config --global user.name "${GITNAME}"
fi
if [[ $GITEMAIL ]]; then
    git config --global user.email $GITEMAIL
fi

echo
echo '--- Setup `screen` ---'
sudo apt install screen
if [ ! -d ~/.screen ]; then
    mkdir ~/.screen
    chmod 700 ~/.screen
fi
sudo sh -c "
    if [ ! -d /root/.screen ]; then
        mkdir /root/.screen
        chown root:root /root/.screen
        chmod 700 /root/.screen
    fi
"

echo
echo '--- Setup `vim` ---'
sudo apt install vim
curl https://raw.githubusercontent.com/trevharmon/environment-presets/master/vim/.vimrc -o /tmp/.vimrc
chmod 600 /tmp/.vimrc
cp -f /tmp/.vimrc ~/.vimrc
sudo cp -f /tmp/.vimrc /root/.vimrc
sudo chown root:root /root/.vimrc
rm /tmp/.vimrc

