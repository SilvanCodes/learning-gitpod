#!/bin/bash

# activate asdf
. $HOME/.asdf/asdf.sh

# install and pin erlang: https://github.com/asdf-vm/asdf-erlang
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin update erlang cebcf62ba06bdca45bd3704f72f4356ddf46d4ec

# install and pin elixir: https://github.com/asdf-vm/asdf-elixir
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin update elixir 63e9cd8317e418d0a04a059b850c63b2fc59e9ae

# install and pin nodejs: https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin update nodejs 794b653b2ae192b1fe3053f8f0877bce81607d9f
