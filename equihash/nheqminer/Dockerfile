FROM nvidia/cuda:latest
MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV WALLET t1eiBzTHA6yjMT1gkpJw4Q4wMTGwqNHMeY3
ENV POOL eu1-zcash.flypool.org:3333

RUN apt-get update -qq
RUN apt-get install -qqy cmake build-essential libboost-all-dev git

RUN git clone -b Linux https://github.com/etherchain-org/nheqminer.git
RUN cd nheqminer/Linux_cmake/nheqminer_cuda_tromp && cmake . && make -j $(nproc)

ENTRYPOINT /nheqminer/Linux_cmake/nheqminer_cuda_tromp -l $POOL -u $WALLET.$(hostname)

# nvidia-docker run -dit --name=zcash --net=host --restart=always perfectweb/zcash
