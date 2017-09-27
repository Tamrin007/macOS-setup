#! /bin/bash

set -eu

echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chpass -s /usr/local/bin/fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fish -c fisher
