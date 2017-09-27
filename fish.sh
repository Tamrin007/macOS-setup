#! /bin/bash

set -eu

echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chpass -s /usr/local/bin/fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fish -c fisher
fish -c fish_update_completions
cp /usr/local/opt/jenv/libexec/fish/jenv.fish ~/.config/fish/functions/jenv.fish
cp /usr/local/opt/jenv/libexec/fish/export.fish  ~/.config/fish/functions/export.fish
