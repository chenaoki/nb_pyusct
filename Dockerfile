FROM gcr.io/tensorflow/tensorflow:latest-gpu

MAINTAINER chenaoki <chenaoki@gmail.com>

RUN echo "now building"

RUN apt update && apt install -y \
  git

ADD dummyfile /data/
WORKDIR /notebooks
RUN git clone https://github.com/chenaoki/nb_pyusct.git 
WORKDIR /notebooks/nb_pyusct
RUN git submodule init 
RUN git submodule update

CMD ["sh", "-c", "jupyter notebook --allow-root"]

