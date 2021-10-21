FROM gitpod/workspace-full:commit-d4c6e6feb5e77a1693c450fed700d53bf6411de8

# user is gitpod by default but who knows that
USER gitpod

# setup asdf-vm: https://asdf-vm.com/guide/getting-started.html
RUN git clone --depth 1 https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.8.1 && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.bashrc && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.profile

# install asdf plugins
COPY install-asdf-plugins.sh $HOME/
RUN $HOME/install-asdf-plugins.sh && \
    rm $HOME/install-asdf-plugins.sh
