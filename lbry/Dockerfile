FROM perfectweb/base:base-v1
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get install wget
RUN wget -O amd_sdk.tar.bz2 --post-data "amd_developer_central_nonce=4a67fab8ff&_wp_http_referer=%2Famd-license-agreement-appsdk%2F&f=QU1ELUFQUC1TREtJbnN0YWxsZXItdjMuMC4xMzAuMTM2LUdBLWxpbnV4NjQudGFyLmJ6Mg%3D%3D" http://developer.amd.com/amd-license-agreement-appsdk/
RUN tar xvf amd_sdk.tar.bz2 && ls
#RUN echo Y | ./AMD-APP-SDK-v3.0.130.136-GA-linux64.sh --nox11 

RUN apt-get install -qyy ocl-icd-opencl-dev


#RUN git clone https://github.com/lbryio/lbrycrd-gpu.git
RUN git clone https://github.com/genesismining/sgminer-gm.git lbrycrd-gpu
RUN cd /lbrycrd-gpu && git submodule init && git submodule update && autoreconf -i && CFLAGS="-O2 -Wall -std=gnu99" ./configure --without-curses --disable-adl && make
RUN ls /lbrycrd-gpu

ENTRYPOINT ["/lbrycrd-gpu/sgminer-new"]
CMD ["-k", "lbry", "-o", "stratum+tcp://lbry.suprnova.cc:6256", "-u", "Tahity.default", "-p", "x", "-T"]

# https://github.com/lbryio/lbrycrd-gpu
# ./sgminer -o stratum+tcp://lbry.suprnova.cc:6256 -u Tahity.default -p x -k lbry -d 0
