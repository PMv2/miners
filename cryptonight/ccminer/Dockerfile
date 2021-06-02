FROM perfectweb/base:cuda-8.0-devel-ubuntu16.04-v1
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone https://github.com/tsiv/ccminer-cryptonight.git
RUN cd /ccminer-cryptonight && ./autogen.sh && ./configure && make

ENTRYPOINT ["/ccminer-cryptonight/ccminer"]
CMD ["-o", "stratum+tcp://xmr-eu1.nanopool.org:14444", "-u", "47sghzufGhJJDQEbScMCwVBimTuq6L5JiRixD8VeGbpjCTA12noXmi4ZyBZLc99e66NtnKff34fHsGRoyZk3ES1s1V4QVcB.a070354377dfa30301d42448f9eafd3b4aa01e1dcb087d92707b7b2055a4634b"]
