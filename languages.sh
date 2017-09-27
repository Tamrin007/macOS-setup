#!/bin/bash

set -eu

rbenv install 2.4.2
rbenv global 2.4.2

export CPPFLAGS="-I/usr/local/opt/openssl/include"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
pyenv install 2.7.14
pyenv install 3.6.2

goenv install 1.9.0
goenv global 1.9.0

nodenv install 8.5.0
nodnev global 8.5.0
