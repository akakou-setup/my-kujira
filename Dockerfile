FROM akakou/ctf-kujira
# install
RUN apt-get install -y neovim
RUN pip3 install neovim xonsh && pip install neovim
# download setting
WORKDIR /root
RUN echo "hell2"
RUN git clone https://github.com/akakou-setup/my-shell
WORKDIR ./my-shell
RUN sh copy.sh
# neovim
RUN sh vim.sh
# shell
RUN rm $HOME/.zsh*
# workdir 
WORKDIR /home/root
