FROM gitpod/workspace-full:commit-d4c6e6feb5e77a1693c450fed700d53bf6411de8

# install asdf
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf
RUN echo -e '\nsource $HOME/.asdf/asdf.sh' >> ~/.bashrc

# install asdf plugins
RUN asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
RUN asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 

# Allow gitpod group to edit 
RUN true \
    && chown -R root:gitpod /home/gitpod/.mix \
    && chmod -R g+rw /home/gitpod/.mix