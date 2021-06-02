FROM ubuntu:16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone https://github.com/genesismining/sgminer-gm.git
RUN cd sgminer-gm && git submodule init && git submodule update && autoreconf -i && CFLAGS="-O2 -Wall -std=gnu99" ./configure --disable-adl --without-curses && make

ENTRYPOINT ["sgminer-gm"]
CMD ["-k", "lbry", "-o", "stratum+tcp://lbry.suprnova.cc:6256", "-u", "Tahity.default", "-p", "x", "-T"]

# https://github.com/lbryio/lbrycrd-gpu
# ./sgminer -o stratum+tcp://lbry.suprnova.cc:6256 -u Tahity.default -p x -k lbry -d 0
