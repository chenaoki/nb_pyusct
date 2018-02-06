FROM gcr.io/tensorflow/tensorflow:latest-gpu

MAINTAINER chenaoki <chenaoki@gmail.com>

RUN echo "now building"

RUN apt update && apt install -y \
  git \
  zsh

RUN git config --global user.name tomii
RUN git config --global user.email tomii@m.u-tokyo.ac.jp
RUN git config --global alias.st status
RUN git config --global alias.co checkout

ADD dummyfile /data/
WORKDIR /notebooks
RUN git clone https://github.com/chenaoki/nb_pyusct.git 
RUN git clone https://github.com/chenaoki/dotfiles.git /root/dotfiles
WORKDIR /root/dotfiles
RUN python install.py
WORKDIR /notebooks/nb_pyusct
RUN git submodule init 
RUN git submodule update
WORKDIR /notebooks

CMD ["sh", "-c", "jupyter notebook --allow-root"]

