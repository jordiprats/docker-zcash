FROM ubuntu:16.04
MAINTAINER Jordi Prats

# https://www.cryptocompare.com/mining/guides/how-to-mine-zcash-with-cpu-linux/
# https://github.com/zcash/zcash/wiki/1.0-User-Guide

RUN mkdir -p /usr/local/src

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install \
    build-essential pkg-config libc6-dev m4 g++-multilib \
    autoconf libtool ncurses-dev unzip git python \
    zlib1g-dev wget bsdmainutils automake git -y

RUN git clone https://github.com/zcash/zcash.git /usr/local/src/zcash

RUN bash -c 'cd /usr/local/src/zcash; git checkout v1.0.1 ./zcutil/fetch-params.sh'

RUN bash -c 'cd /usr/local/src/zcash; ./zcutil/build.sh'

RUN mkdir -p ~/.zcash
RUN echo "addnode=mainnet.z.cash" >~/.zcash/zcash.conf
RUN echo "rpcuser=username" >>~/.zcash/zcash.conf
RUN echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.zcash/zcash.conf

RUN echo 'gen=1' >> ~/.zcash/zcash.conf
RUN echo "genproclimit=-1" >> ~/.zcash/zcash.conf

# test
# RUN echo 'equihashsolver=tromp' >> ~/.zcash/zcash.conf

# descarrega

RUN bash -c 'cd /usr/local/src/zcash; ./zcutil/fetch-params.sh'

CMD bash -c 'cd /usr/local/src/zcash; ./src/zcashd'
